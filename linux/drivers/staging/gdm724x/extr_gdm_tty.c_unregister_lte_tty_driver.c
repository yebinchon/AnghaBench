
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int dummy; } ;


 int TTY_MAX_COUNT ;
 struct tty_driver** gdm_driver ;
 int put_tty_driver (struct tty_driver*) ;
 int tty_unregister_driver (struct tty_driver*) ;

void unregister_lte_tty_driver(void)
{
 struct tty_driver *tty_driver;
 int i;

 for (i = 0; i < TTY_MAX_COUNT; i++) {
  tty_driver = gdm_driver[i];
  if (tty_driver) {
   tty_unregister_driver(tty_driver);
   put_tty_driver(tty_driver);
  }
 }
}
