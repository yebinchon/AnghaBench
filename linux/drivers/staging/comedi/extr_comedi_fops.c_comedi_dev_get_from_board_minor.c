
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int * comedi_board_minor_table ;
 int comedi_board_minor_table_lock ;
 struct comedi_device* comedi_dev_get (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct comedi_device *comedi_dev_get_from_board_minor(unsigned int minor)
{
 struct comedi_device *dev;

 mutex_lock(&comedi_board_minor_table_lock);
 dev = comedi_dev_get(comedi_board_minor_table[minor]);
 mutex_unlock(&comedi_board_minor_table_lock);
 return dev;
}
