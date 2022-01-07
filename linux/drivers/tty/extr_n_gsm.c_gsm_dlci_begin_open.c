
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {int t1; int n2; } ;
struct gsm_dlci {scalar_t__ state; int t1; int addr; struct gsm_mux* gsm; int retries; } ;


 scalar_t__ DLCI_OPEN ;
 scalar_t__ DLCI_OPENING ;
 int HZ ;
 int PF ;
 int SABM ;
 int gsm_command (struct gsm_mux*,int ,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void gsm_dlci_begin_open(struct gsm_dlci *dlci)
{
 struct gsm_mux *gsm = dlci->gsm;
 if (dlci->state == DLCI_OPEN || dlci->state == DLCI_OPENING)
  return;
 dlci->retries = gsm->n2;
 dlci->state = DLCI_OPENING;
 gsm_command(dlci->gsm, dlci->addr, SABM|PF);
 mod_timer(&dlci->t1, jiffies + gsm->t1 * HZ / 100);
}
