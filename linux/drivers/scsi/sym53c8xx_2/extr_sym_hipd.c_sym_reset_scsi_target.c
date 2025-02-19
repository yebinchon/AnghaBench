
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sym_tcb {int to_reset; } ;
struct sym_hcb {int myaddr; int istat_sem; struct sym_tcb* target; } ;


 int OUTB (struct sym_hcb*,int ,int) ;
 int SEM ;
 int SIGP ;
 scalar_t__ SYM_CONF_MAX_TARGET ;
 int nc_istat ;

int sym_reset_scsi_target(struct sym_hcb *np, int target)
{
 struct sym_tcb *tp;

 if (target == np->myaddr || (u_int)target >= SYM_CONF_MAX_TARGET)
  return -1;

 tp = &np->target[target];
 tp->to_reset = 1;

 np->istat_sem = SEM;
 OUTB(np, nc_istat, SIGP|SEM);

 return 0;
}
