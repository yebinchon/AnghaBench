
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_ctrl_blk {int next_state; } ;
struct initio_host {int phase; scalar_t__ addr; struct scsi_ctrl_blk* active; } ;





 int MSG_NOP ;


 int TSC_XF_FIFO_OUT ;
 scalar_t__ TUL_SCmd ;
 scalar_t__ TUL_SFifo ;
 int initio_bad_seq (struct initio_host*) ;
 int initio_msgin (struct initio_host*) ;
 int initio_status_msg (struct initio_host*) ;
 int initio_xpad_in (struct initio_host*) ;
 int initio_xpad_out (struct initio_host*) ;
 int outb (int ,scalar_t__) ;
 int printk (char*) ;
 int wait_tulip (struct initio_host*) ;

__attribute__((used)) static int initio_state_6(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb = host->active;




 for (;;) {
  switch (host->phase) {
  case 128:
   if ((initio_status_msg(host)) == -1)
    return -1;
   break;

  case 130:
   scb->next_state = 6;
   if ((initio_msgin(host)) == -1)
    return -1;
   break;

  case 129:
   outb(MSG_NOP, host->addr + TUL_SFifo);
   outb(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
   if (wait_tulip(host) == -1)
    return -1;
   break;

  case 132:
   return initio_xpad_in(host);

  case 131:
   return initio_xpad_out(host);

  default:
   return initio_bad_seq(host);
  }
 }
}
