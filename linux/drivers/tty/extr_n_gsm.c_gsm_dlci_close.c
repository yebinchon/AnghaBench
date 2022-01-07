
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gsm_dlci {scalar_t__ addr; TYPE_1__* gsm; int fifo; int port; int state; int t1; } ;
struct TYPE_2__ {int dead; int event; } ;


 int DLCI_CLOSED ;
 int debug ;
 int del_timer (int *) ;
 int kfifo_reset (int ) ;
 int pr_debug (char*,scalar_t__) ;
 int tty_port_tty_hangup (int *,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void gsm_dlci_close(struct gsm_dlci *dlci)
{
 del_timer(&dlci->t1);
 if (debug & 8)
  pr_debug("DLCI %d goes closed.\n", dlci->addr);
 dlci->state = DLCI_CLOSED;
 if (dlci->addr != 0) {
  tty_port_tty_hangup(&dlci->port, 0);
  kfifo_reset(dlci->fifo);
 } else
  dlci->gsm->dead = 1;
 wake_up(&dlci->gsm->event);


}
