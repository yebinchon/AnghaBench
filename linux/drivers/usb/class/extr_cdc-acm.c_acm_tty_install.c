
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_lflag; } ;
struct tty_struct {struct acm* driver_data; TYPE_1__ termios; int index; } ;
struct tty_driver {int dummy; } ;
struct acm {int quirks; int port; } ;


 int DISABLE_ECHO ;
 int ECHO ;
 int ENODEV ;
 struct acm* acm_get_by_minor (int ) ;
 int tty_port_put (int *) ;
 int tty_standard_install (struct tty_driver*,struct tty_struct*) ;

__attribute__((used)) static int acm_tty_install(struct tty_driver *driver, struct tty_struct *tty)
{
 struct acm *acm;
 int retval;

 acm = acm_get_by_minor(tty->index);
 if (!acm)
  return -ENODEV;

 retval = tty_standard_install(driver, tty);
 if (retval)
  goto error_init_termios;





 if (acm->quirks & DISABLE_ECHO)
  tty->termios.c_lflag &= ~ECHO;

 tty->driver_data = acm;

 return 0;

error_init_termios:
 tty_port_put(&acm->port);
 return retval;
}
