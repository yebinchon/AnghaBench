
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int * device; } ;
struct comedi_device {int dummy; } ;


 unsigned int COMEDI_NUM_BOARD_MINORS ;
 struct comedi_device* comedi_dev_get (int *) ;
 struct comedi_subdevice** comedi_subdevice_minor_table ;
 int comedi_subdevice_minor_table_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct comedi_device *
comedi_dev_get_from_subdevice_minor(unsigned int minor)
{
 struct comedi_device *dev;
 struct comedi_subdevice *s;
 unsigned int i = minor - COMEDI_NUM_BOARD_MINORS;

 mutex_lock(&comedi_subdevice_minor_table_lock);
 s = comedi_subdevice_minor_table[i];
 dev = comedi_dev_get(s ? s->device : ((void*)0));
 mutex_unlock(&comedi_subdevice_minor_table_lock);
 return dev;
}
