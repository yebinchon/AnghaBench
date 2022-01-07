
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ type; } ;
struct comedi_device {int n_subdevices; struct comedi_subdevice* subdevices; } ;


 scalar_t__ COMEDI_SUBD_UNUSED ;
 int I8255_SIZE ;
 int release_region (unsigned long,int ) ;
 unsigned long subdev_8255_regbase (struct comedi_subdevice*) ;

__attribute__((used)) static void dev_8255_detach(struct comedi_device *dev)
{
 struct comedi_subdevice *s;
 int i;

 for (i = 0; i < dev->n_subdevices; i++) {
  s = &dev->subdevices[i];
  if (s->type != COMEDI_SUBD_UNUSED) {
   unsigned long regbase = subdev_8255_regbase(s);

   release_region(regbase, I8255_SIZE);
  }
 }
}
