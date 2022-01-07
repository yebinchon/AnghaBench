
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {void* type; } ;
struct comedi_device {int n_subdevices; struct comedi_subdevice* subdevices; int class_dev; } ;
struct comedi_devconfig {unsigned long* options; } ;


 int COMEDI_NDEVCONFOPTS ;
 void* COMEDI_SUBD_UNUSED ;
 int EINVAL ;
 int I8255_SIZE ;
 int __comedi_request_region (struct comedi_device*,unsigned long,int ) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int dev_warn (int ,char*) ;
 int release_region (unsigned long,int ) ;
 int subdev_8255_init (struct comedi_device*,struct comedi_subdevice*,int *,unsigned long) ;

__attribute__((used)) static int dev_8255_attach(struct comedi_device *dev,
      struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 unsigned long iobase;
 int ret;
 int i;

 for (i = 0; i < COMEDI_NDEVCONFOPTS; i++) {
  iobase = it->options[i];
  if (!iobase)
   break;
 }
 if (i == 0) {
  dev_warn(dev->class_dev, "no devices specified\n");
  return -EINVAL;
 }

 ret = comedi_alloc_subdevices(dev, i);
 if (ret)
  return ret;

 for (i = 0; i < dev->n_subdevices; i++) {
  s = &dev->subdevices[i];
  iobase = it->options[i];
  ret = __comedi_request_region(dev, iobase, I8255_SIZE);
  if (ret) {
   s->type = COMEDI_SUBD_UNUSED;
  } else {
   ret = subdev_8255_init(dev, s, ((void*)0), iobase);
   if (ret) {




    release_region(iobase, I8255_SIZE);
    s->type = COMEDI_SUBD_UNUSED;
    return ret;
   }
  }
 }

 return 0;
}
