
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_hcb {int istat_sem; } ;
struct sym_ccb {scalar_t__ host_status; int to_abort; } ;


 scalar_t__ HS_WAIT ;
 int OUTB (struct sym_hcb*,int ,int) ;
 int SEM ;
 int SIGP ;
 int nc_istat ;
 int sym_reset_scsi_bus (struct sym_hcb*,int) ;

__attribute__((used)) static int sym_abort_ccb(struct sym_hcb *np, struct sym_ccb *cp, int timed_out)
{



 if (!cp || !cp->host_status || cp->host_status == HS_WAIT)
  return -1;





 if (cp->to_abort) {
  sym_reset_scsi_bus(np, 1);
  return 0;
 }




 cp->to_abort = timed_out ? 2 : 1;




 np->istat_sem = SEM;
 OUTB(np, nc_istat, SIGP|SEM);
 return 0;
}
