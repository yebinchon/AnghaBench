
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gsm_dlci* driver_data; } ;
struct gsm_dlci {unsigned int modem_tx; scalar_t__ state; } ;


 scalar_t__ DLCI_CLOSED ;
 int EINVAL ;
 int gsmtty_modem_update (struct gsm_dlci*,int ) ;

__attribute__((used)) static int gsmtty_tiocmset(struct tty_struct *tty,
 unsigned int set, unsigned int clear)
{
 struct gsm_dlci *dlci = tty->driver_data;
 unsigned int modem_tx = dlci->modem_tx;

 if (dlci->state == DLCI_CLOSED)
  return -EINVAL;
 modem_tx &= ~clear;
 modem_tx |= set;

 if (modem_tx != dlci->modem_tx) {
  dlci->modem_tx = modem_tx;
  return gsmtty_modem_update(dlci, 0);
 }
 return 0;
}
