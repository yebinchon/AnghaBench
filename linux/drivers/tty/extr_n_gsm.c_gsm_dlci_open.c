
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gsm_dlci {TYPE_1__* gsm; int addr; int state; int t1; } ;
struct TYPE_2__ {int event; } ;


 int DLCI_OPEN ;
 int debug ;
 int del_timer (int *) ;
 int pr_debug (char*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void gsm_dlci_open(struct gsm_dlci *dlci)
{


 del_timer(&dlci->t1);

 dlci->state = DLCI_OPEN;
 if (debug & 8)
  pr_debug("DLCI %d goes open.\n", dlci->addr);
 wake_up(&dlci->gsm->event);
}
