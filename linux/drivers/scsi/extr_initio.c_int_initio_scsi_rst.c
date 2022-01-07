
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_ctrl_blk {int hastat; } ;
struct initio_host {int max_tar; TYPE_1__* targets; int * active_tc; int * active; scalar_t__ addr; } ;
struct TYPE_2__ {int flags; } ;


 int HOST_BAD_PHAS ;
 int TAX_X_ABT ;
 int TAX_X_CLR_FIFO ;
 int TCF_SYNC_DONE ;
 int TCF_WDTR_DONE ;
 int TSC_FLUSH_FIFO ;
 scalar_t__ TUL_Int ;
 scalar_t__ TUL_SCtrl0 ;
 scalar_t__ TUL_XCmd ;
 scalar_t__ TUL_XStatus ;
 int cpu_relax () ;
 int inb (scalar_t__) ;
 int initio_append_done_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 struct scsi_ctrl_blk* initio_pop_busy_scb (struct initio_host*) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int int_initio_scsi_rst(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb;
 int i;


 if (inb(host->addr + TUL_XStatus) & 0x01) {
  outb(TAX_X_ABT | TAX_X_CLR_FIFO, host->addr + TUL_XCmd);

  while ((inb(host->addr + TUL_Int) & 0x04) == 0)
   cpu_relax();
  outb(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);
 }

 while ((scb = initio_pop_busy_scb(host)) != ((void*)0)) {
  scb->hastat = HOST_BAD_PHAS;
  initio_append_done_scb(host, scb);
 }
 host->active = ((void*)0);
 host->active_tc = ((void*)0);


 for (i = 0; i < host->max_tar; i++)
  host->targets[i].flags &= ~(TCF_SYNC_DONE | TCF_WDTR_DONE);
 return -1;
}
