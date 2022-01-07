
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_driver {struct comedi_driver* next; } ;


 struct comedi_driver* comedi_drivers ;
 int comedi_drivers_list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int comedi_driver_register(struct comedi_driver *driver)
{
 mutex_lock(&comedi_drivers_list_lock);
 driver->next = comedi_drivers;
 comedi_drivers = driver;
 mutex_unlock(&comedi_drivers_list_lock);

 return 0;
}
