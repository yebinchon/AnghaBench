
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int termios; struct gsm_dlci* driver_data; } ;
struct ktermios {int dummy; } ;
struct gsm_dlci {scalar_t__ state; } ;


 scalar_t__ DLCI_CLOSED ;
 int tty_termios_copy_hw (int *,struct ktermios*) ;

__attribute__((used)) static void gsmtty_set_termios(struct tty_struct *tty, struct ktermios *old)
{
 struct gsm_dlci *dlci = tty->driver_data;
 if (dlci->state == DLCI_CLOSED)
  return;





 tty_termios_copy_hw(&tty->termios, old);
}
