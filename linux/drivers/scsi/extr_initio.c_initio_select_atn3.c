
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_ctrl_blk {int next_state; int cdblen; size_t target; int * cdb; int tagid; int tagmsg; int ident; int status; } ;
struct initio_host {scalar_t__ addr; struct scsi_ctrl_blk* active; int * targets; int * active_tc; } ;


 int SCB_SELECT ;
 int TSC_SEL_ATN3 ;
 scalar_t__ TUL_SCmd ;
 scalar_t__ TUL_SFifo ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void initio_select_atn3(struct initio_host * host, struct scsi_ctrl_blk * scb)
{
 int i;

 scb->status |= SCB_SELECT;
 scb->next_state = 0x2;

 outb(scb->ident, host->addr + TUL_SFifo);
 outb(scb->tagmsg, host->addr + TUL_SFifo);
 outb(scb->tagid, host->addr + TUL_SFifo);
 for (i = 0; i < scb->cdblen; i++)
  outb(scb->cdb[i], host->addr + TUL_SFifo);
 host->active_tc = &host->targets[scb->target];
 host->active = scb;
 outb(TSC_SEL_ATN3, host->addr + TUL_SCmd);
}
