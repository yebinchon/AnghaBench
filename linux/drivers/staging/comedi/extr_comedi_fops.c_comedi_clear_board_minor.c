
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 struct comedi_device** comedi_board_minor_table ;
 int comedi_board_minor_table_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct comedi_device *comedi_clear_board_minor(unsigned int minor)
{
 struct comedi_device *dev;

 mutex_lock(&comedi_board_minor_table_lock);
 dev = comedi_board_minor_table[minor];
 comedi_board_minor_table[minor] = ((void*)0);
 mutex_unlock(&comedi_board_minor_table_lock);
 return dev;
}
