
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct gsm_mux {int t1; int control; } ;
struct gsm_dlci {int state; int t1; int addr; struct gsm_mux* gsm; int retries; int mode; } ;


 int DISC ;

 int DLCI_MODE_ADM ;

 int DM ;
 int HZ ;
 int PF ;
 int SABM ;
 int debug ;
 struct gsm_dlci* dlci ;
 struct gsm_dlci* from_timer (int ,struct timer_list*,int ) ;
 int gsm_command (struct gsm_mux*,int ,int) ;
 int gsm_dlci_close (struct gsm_dlci*) ;
 int gsm_dlci_open (struct gsm_dlci*) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int pr_info (char*,int ) ;
 int t1 ;

__attribute__((used)) static void gsm_dlci_t1(struct timer_list *t)
{
 struct gsm_dlci *dlci = from_timer(dlci, t, t1);
 struct gsm_mux *gsm = dlci->gsm;

 switch (dlci->state) {
 case 128:
  dlci->retries--;
  if (dlci->retries) {
   gsm_command(dlci->gsm, dlci->addr, SABM|PF);
   mod_timer(&dlci->t1, jiffies + gsm->t1 * HZ / 100);
  } else if (!dlci->addr && gsm->control == (DM | PF)) {
   if (debug & 8)
    pr_info("DLCI %d opening in ADM mode.\n",
     dlci->addr);
   dlci->mode = DLCI_MODE_ADM;
   gsm_dlci_open(dlci);
  } else {
   gsm_dlci_close(dlci);
  }

  break;
 case 129:
  dlci->retries--;
  if (dlci->retries) {
   gsm_command(dlci->gsm, dlci->addr, DISC|PF);
   mod_timer(&dlci->t1, jiffies + gsm->t1 * HZ / 100);
  } else
   gsm_dlci_close(dlci);
  break;
 }
}
