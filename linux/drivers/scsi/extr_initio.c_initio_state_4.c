
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_ctrl_blk {int flags; scalar_t__ buflen; int next_state; void* hastat; } ;
struct initio_host {int phase; int jsstatus0; scalar_t__ addr; struct scsi_ctrl_blk* active; } ;




 void* HOST_DO_DU ;

 int MSG_NOP ;

 int SCF_DIR ;
 int SCF_NO_XF ;

 int TSC_XF_FIFO_OUT ;
 int TSS_PAR_ERROR ;
 scalar_t__ TUL_SCmd ;
 scalar_t__ TUL_SFifo ;
 int initio_bad_seq (struct initio_host*) ;
 int initio_msgin (struct initio_host*) ;
 int initio_msgout_ide (struct initio_host*) ;
 int initio_status_msg (struct initio_host*) ;
 int initio_xfer_data_in (struct initio_host*) ;
 int initio_xfer_data_out (struct initio_host*) ;
 int outb (int ,scalar_t__) ;
 int printk (char*) ;
 int wait_tulip (struct initio_host*) ;

__attribute__((used)) static int initio_state_4(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb = host->active;




 if ((scb->flags & SCF_DIR) == SCF_NO_XF) {
  return 6;
 }
 for (;;) {
  if (scb->buflen == 0)
   return 6;

  switch (host->phase) {

  case 128:
   if ((scb->flags & SCF_DIR) != 0)
    scb->hastat = HOST_DO_DU;
   if ((initio_status_msg(host)) == -1)
    return -1;
   break;

  case 130:
   scb->next_state = 0x4;
   if (initio_msgin(host) == -1)
    return -1;
   break;

  case 129:
   if (host->jsstatus0 & TSS_PAR_ERROR) {
    scb->buflen = 0;
    scb->hastat = HOST_DO_DU;
    if (initio_msgout_ide(host) == -1)
     return -1;
    return 6;
   } else {
    outb(MSG_NOP, host->addr + TUL_SFifo);
    outb(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
    if (wait_tulip(host) == -1)
     return -1;
   }
   break;

  case 132:
   return initio_xfer_data_in(host);

  case 131:
   return initio_xfer_data_out(host);

  default:
   return initio_bad_seq(host);
  }
 }
}
