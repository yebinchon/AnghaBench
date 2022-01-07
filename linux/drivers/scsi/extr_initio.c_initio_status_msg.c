
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct scsi_ctrl_blk {int tastat; } ;
struct initio_host {scalar_t__ phase; int jsstatus0; scalar_t__ addr; struct scsi_ctrl_blk* active; } ;


 scalar_t__ MSG_IN ;
 scalar_t__ MSG_LINK_COMP ;
 scalar_t__ MSG_LINK_FLAG ;
 int MSG_NOP ;
 scalar_t__ MSG_OUT ;
 int MSG_PARITY ;
 int TSC_CMD_COMP ;
 int TSC_FLUSH_FIFO ;
 int TSC_MSG_ACCEPT ;
 int TSC_XF_FIFO_OUT ;
 int TSS_PAR_ERROR ;
 scalar_t__ TUL_SCmd ;
 scalar_t__ TUL_SCtrl0 ;
 scalar_t__ TUL_SFifo ;
 void* inb (scalar_t__) ;
 int initio_bad_seq (struct initio_host*) ;
 int initio_msgin_accept (struct initio_host*) ;
 int initio_wait_done_disc (struct initio_host*) ;
 int outb (int ,scalar_t__) ;
 int wait_tulip (struct initio_host*) ;

int initio_status_msg(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb = host->active;
 u8 msg;

 outb(TSC_CMD_COMP, host->addr + TUL_SCmd);
 if (wait_tulip(host) == -1)
  return -1;


 scb->tastat = inb(host->addr + TUL_SFifo);

 if (host->phase == MSG_OUT) {
  if (host->jsstatus0 & TSS_PAR_ERROR)
   outb(MSG_PARITY, host->addr + TUL_SFifo);
  else
   outb(MSG_NOP, host->addr + TUL_SFifo);
  outb(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
  return wait_tulip(host);
 }
 if (host->phase == MSG_IN) {
  msg = inb(host->addr + TUL_SFifo);
  if (host->jsstatus0 & TSS_PAR_ERROR) {
   if ((initio_msgin_accept(host)) == -1)
    return -1;
   if (host->phase != MSG_OUT)
    return initio_bad_seq(host);
   outb(MSG_PARITY, host->addr + TUL_SFifo);
   outb(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
   return wait_tulip(host);
  }
  if (msg == 0) {

   if ((scb->tastat & 0x18) == 0x10)
    return initio_bad_seq(host);
   outb(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);
   outb(TSC_MSG_ACCEPT, host->addr + TUL_SCmd);
   return initio_wait_done_disc(host);

  }
  if (msg == MSG_LINK_COMP || msg == MSG_LINK_FLAG) {
   if ((scb->tastat & 0x18) == 0x10)
    return initio_msgin_accept(host);
  }
 }
 return initio_bad_seq(host);
}
