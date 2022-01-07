
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int kref; } ;


 int destruct_tty_driver ;
 int kref_put (int *,int ) ;

void tty_driver_kref_put(struct tty_driver *driver)
{
 kref_put(&driver->kref, destruct_tty_driver);
}
