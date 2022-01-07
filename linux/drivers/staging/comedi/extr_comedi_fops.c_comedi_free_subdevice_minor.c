
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ minor; int * class_dev; } ;


 int COMEDI_MAJOR ;
 scalar_t__ COMEDI_NUM_BOARD_MINORS ;
 scalar_t__ COMEDI_NUM_MINORS ;
 int MKDEV (int ,scalar_t__) ;
 int comedi_class ;
 struct comedi_subdevice** comedi_subdevice_minor_table ;
 int comedi_subdevice_minor_table_lock ;
 int device_destroy (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void comedi_free_subdevice_minor(struct comedi_subdevice *s)
{
 unsigned int i;

 if (!s)
  return;
 if (s->minor < COMEDI_NUM_BOARD_MINORS ||
     s->minor >= COMEDI_NUM_MINORS)
  return;

 i = s->minor - COMEDI_NUM_BOARD_MINORS;
 mutex_lock(&comedi_subdevice_minor_table_lock);
 if (s == comedi_subdevice_minor_table[i])
  comedi_subdevice_minor_table[i] = ((void*)0);
 mutex_unlock(&comedi_subdevice_minor_table_lock);
 if (s->class_dev) {
  device_destroy(comedi_class, MKDEV(COMEDI_MAJOR, s->minor));
  s->class_dev = ((void*)0);
 }
}
