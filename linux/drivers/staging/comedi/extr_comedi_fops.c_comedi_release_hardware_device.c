
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct comedi_device {struct device* hw_dev; } ;


 int COMEDI_NUM_BOARD_MINORS ;
 struct comedi_device** comedi_board_minor_table ;
 int comedi_board_minor_table_lock ;
 int comedi_free_board_dev (struct comedi_device*) ;
 int comedi_num_legacy_minors ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void comedi_release_hardware_device(struct device *hardware_device)
{
 int minor;
 struct comedi_device *dev;

 for (minor = comedi_num_legacy_minors; minor < COMEDI_NUM_BOARD_MINORS;
      minor++) {
  mutex_lock(&comedi_board_minor_table_lock);
  dev = comedi_board_minor_table[minor];
  if (dev && dev->hw_dev == hardware_device) {
   comedi_board_minor_table[minor] = ((void*)0);
   mutex_unlock(&comedi_board_minor_table_lock);
   comedi_free_board_dev(dev);
   break;
  }
  mutex_unlock(&comedi_board_minor_table_lock);
 }
}
