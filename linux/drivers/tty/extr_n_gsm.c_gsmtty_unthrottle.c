
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gsm_dlci* driver_data; } ;
struct gsm_dlci {scalar_t__ state; scalar_t__ throttled; int modem_tx; } ;


 scalar_t__ C_CRTSCTS (struct tty_struct*) ;
 scalar_t__ DLCI_CLOSED ;
 int TIOCM_DTR ;
 int gsmtty_modem_update (struct gsm_dlci*,int ) ;

__attribute__((used)) static void gsmtty_unthrottle(struct tty_struct *tty)
{
 struct gsm_dlci *dlci = tty->driver_data;
 if (dlci->state == DLCI_CLOSED)
  return;
 if (C_CRTSCTS(tty))
  dlci->modem_tx |= TIOCM_DTR;
 dlci->throttled = 0;

 gsmtty_modem_update(dlci, 0);
}
