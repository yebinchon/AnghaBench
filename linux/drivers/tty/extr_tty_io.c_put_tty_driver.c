
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int dummy; } ;


 int tty_driver_kref_put (struct tty_driver*) ;

void put_tty_driver(struct tty_driver *d)
{
 tty_driver_kref_put(d);
}
