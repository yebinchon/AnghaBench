
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct comedi_subdevice {unsigned int minor; struct device* class_dev; int index; struct comedi_device* device; } ;
struct comedi_device {int minor; int class_dev; } ;


 int COMEDI_MAJOR ;
 scalar_t__ COMEDI_NUM_BOARD_MINORS ;
 unsigned int COMEDI_NUM_SUBDEVICE_MINORS ;
 int EBUSY ;
 int IS_ERR (struct device*) ;
 int MKDEV (int ,unsigned int) ;
 int comedi_class ;
 struct comedi_subdevice** comedi_subdevice_minor_table ;
 int comedi_subdevice_minor_table_lock ;
 int dev_err (int ,char*) ;
 struct device* device_create (int ,int ,int ,int *,char*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int comedi_alloc_subdevice_minor(struct comedi_subdevice *s)
{
 struct comedi_device *dev = s->device;
 struct device *csdev;
 unsigned int i;

 mutex_lock(&comedi_subdevice_minor_table_lock);
 for (i = 0; i < COMEDI_NUM_SUBDEVICE_MINORS; ++i) {
  if (!comedi_subdevice_minor_table[i]) {
   comedi_subdevice_minor_table[i] = s;
   break;
  }
 }
 mutex_unlock(&comedi_subdevice_minor_table_lock);
 if (i == COMEDI_NUM_SUBDEVICE_MINORS) {
  dev_err(dev->class_dev,
   "ran out of minor numbers for subdevice files\n");
  return -EBUSY;
 }
 i += COMEDI_NUM_BOARD_MINORS;
 s->minor = i;
 csdev = device_create(comedi_class, dev->class_dev,
         MKDEV(COMEDI_MAJOR, i), ((void*)0), "comedi%i_subd%i",
         dev->minor, s->index);
 if (!IS_ERR(csdev))
  s->class_dev = csdev;

 return 0;
}
