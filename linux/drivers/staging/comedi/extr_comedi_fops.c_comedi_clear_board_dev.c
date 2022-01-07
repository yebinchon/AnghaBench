
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {unsigned int minor; int mutex; } ;


 struct comedi_device** comedi_board_minor_table ;
 int comedi_board_minor_table_lock ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool comedi_clear_board_dev(struct comedi_device *dev)
{
 unsigned int i = dev->minor;
 bool cleared = 0;

 lockdep_assert_held(&dev->mutex);
 mutex_lock(&comedi_board_minor_table_lock);
 if (dev == comedi_board_minor_table[i]) {
  comedi_board_minor_table[i] = ((void*)0);
  cleared = 1;
 }
 mutex_unlock(&comedi_board_minor_table_lock);
 return cleared;
}
