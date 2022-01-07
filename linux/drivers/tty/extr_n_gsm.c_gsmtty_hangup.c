
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gsm_dlci* driver_data; } ;
struct gsm_dlci {scalar_t__ state; int port; } ;


 scalar_t__ DLCI_CLOSED ;
 int gsm_dlci_begin_close (struct gsm_dlci*) ;
 int tty_port_hangup (int *) ;

__attribute__((used)) static void gsmtty_hangup(struct tty_struct *tty)
{
 struct gsm_dlci *dlci = tty->driver_data;
 if (dlci->state == DLCI_CLOSED)
  return;
 tty_port_hangup(&dlci->port);
 gsm_dlci_begin_close(dlci);
}
