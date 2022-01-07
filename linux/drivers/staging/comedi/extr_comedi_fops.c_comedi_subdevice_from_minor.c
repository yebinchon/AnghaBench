
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_device const* device; } ;
struct comedi_device {int dummy; } ;


 unsigned int COMEDI_NUM_BOARD_MINORS ;
 struct comedi_subdevice** comedi_subdevice_minor_table ;
 int comedi_subdevice_minor_table_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct comedi_subdevice *
comedi_subdevice_from_minor(const struct comedi_device *dev, unsigned int minor)
{
 struct comedi_subdevice *s;
 unsigned int i = minor - COMEDI_NUM_BOARD_MINORS;

 mutex_lock(&comedi_subdevice_minor_table_lock);
 s = comedi_subdevice_minor_table[i];
 if (s && s->device != dev)
  s = ((void*)0);
 mutex_unlock(&comedi_subdevice_minor_table_lock);
 return s;
}
