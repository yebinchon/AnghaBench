
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {size_t index; int count; } ;
struct tty_driver {struct tty_struct** ttys; } ;


 int tty_driver_kref_get (struct tty_driver*) ;
 int tty_init_termios (struct tty_struct*) ;

int tty_standard_install(struct tty_driver *driver, struct tty_struct *tty)
{
 tty_init_termios(tty);
 tty_driver_kref_get(driver);
 tty->count++;
 driver->ttys[tty->index] = tty;
 return 0;
}
