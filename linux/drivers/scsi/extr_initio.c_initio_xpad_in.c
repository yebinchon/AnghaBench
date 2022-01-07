
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_control {int js_period; } ;
struct scsi_ctrl_blk {int flags; int hastat; } ;
struct initio_host {scalar_t__ phase; scalar_t__ addr; struct target_control* active_tc; struct scsi_ctrl_blk* active; } ;


 scalar_t__ DATA_IN ;
 int HOST_DO_DU ;
 int SCF_DIR ;
 int SCF_NO_DCHK ;
 int TSC_FLUSH_FIFO ;
 int TSC_WIDE_SCSI ;
 int TSC_XF_FIFO_IN ;
 scalar_t__ TUL_SCmd ;
 scalar_t__ TUL_SCnt0 ;
 scalar_t__ TUL_SCtrl0 ;
 scalar_t__ TUL_SFifo ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int outl (int,scalar_t__) ;
 int wait_tulip (struct initio_host*) ;

int initio_xpad_in(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb = host->active;
 struct target_control *active_tc = host->active_tc;

 if ((scb->flags & SCF_DIR) != SCF_NO_DCHK)
  scb->hastat = HOST_DO_DU;
 for (;;) {
  if (active_tc->js_period & TSC_WIDE_SCSI)
   outl(2, host->addr + TUL_SCnt0);
  else
   outl(1, host->addr + TUL_SCnt0);

  outb(TSC_XF_FIFO_IN, host->addr + TUL_SCmd);
  if (wait_tulip(host) == -1)
   return -1;
  if (host->phase != DATA_IN) {
   outb(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);
   return 6;
  }
  inb(host->addr + TUL_SFifo);
 }
}
