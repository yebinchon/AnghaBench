
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl724_board {unsigned int io_range; int numofports; scalar_t__ is_pet48; scalar_t__ can_have96; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int n_subdevices; int iobase; struct comedi_subdevice* subdevices; struct pcl724_board* board_ptr; } ;
struct comedi_devconfig {int* options; } ;


 int I8255_SIZE ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int,unsigned int) ;
 int * pcl724_8255mapped_io ;
 int subdev_8255_init (struct comedi_device*,struct comedi_subdevice*,int *,int) ;

__attribute__((used)) static int pcl724_attach(struct comedi_device *dev,
    struct comedi_devconfig *it)
{
 const struct pcl724_board *board = dev->board_ptr;
 struct comedi_subdevice *s;
 unsigned long iobase;
 unsigned int iorange;
 int n_subdevices;
 int ret;
 int i;

 iorange = board->io_range;
 n_subdevices = board->numofports;


 if (board->can_have96 &&
     (it->options[2] == 1 || it->options[2] == 96)) {
  iorange = 0x10;
  n_subdevices = 4;
 }

 ret = comedi_request_region(dev, it->options[0], iorange);
 if (ret)
  return ret;

 ret = comedi_alloc_subdevices(dev, n_subdevices);
 if (ret)
  return ret;

 for (i = 0; i < dev->n_subdevices; i++) {
  s = &dev->subdevices[i];
  if (board->is_pet48) {
   iobase = dev->iobase + (i * 0x1000);
   ret = subdev_8255_init(dev, s, pcl724_8255mapped_io,
            iobase);
  } else {
   ret = subdev_8255_init(dev, s, ((void*)0), i * I8255_SIZE);
  }
  if (ret)
   return ret;
 }

 return 0;
}
