
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fnic {scalar_t__ state; int fnic_lock; int frame_work; scalar_t__ stop_rx_link_events; TYPE_1__* lport; } ;
struct fcpio_tag {int dummy; } ;
struct fcpio_fw_req {int hdr; } ;
struct TYPE_2__ {int host; } ;


 scalar_t__ FNIC_IN_ETH_MODE ;
 scalar_t__ FNIC_IN_ETH_TRANS_FC_MODE ;
 scalar_t__ FNIC_IN_FC_MODE ;
 int FNIC_SCSI_DBG (int ,int ,char*,...) ;
 int KERN_DEBUG ;
 int fcpio_header_dec (int *,int *,int *,struct fcpio_tag*) ;
 int fnic_event_queue ;
 int fnic_fcpio_status_to_str (int ) ;
 int fnic_flush_tx (struct fnic*) ;
 int fnic_state_to_str (scalar_t__) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fnic_fcpio_flogi_reg_cmpl_handler(struct fnic *fnic,
          struct fcpio_fw_req *desc)
{
 u8 type;
 u8 hdr_status;
 struct fcpio_tag tag;
 int ret = 0;
 unsigned long flags;

 fcpio_header_dec(&desc->hdr, &type, &hdr_status, &tag);


 spin_lock_irqsave(&fnic->fnic_lock, flags);

 if (fnic->state == FNIC_IN_ETH_TRANS_FC_MODE) {


  if (!hdr_status) {
   FNIC_SCSI_DBG(KERN_DEBUG, fnic->lport->host,
          "flog reg succeeded\n");
   fnic->state = FNIC_IN_FC_MODE;
  } else {
   FNIC_SCSI_DBG(KERN_DEBUG,
          fnic->lport->host,
          "fnic flogi reg :failed %s\n",
          fnic_fcpio_status_to_str(hdr_status));
   fnic->state = FNIC_IN_ETH_MODE;
   ret = -1;
  }
 } else {
  FNIC_SCSI_DBG(KERN_DEBUG, fnic->lport->host,
         "Unexpected fnic state %s while"
         " processing flogi reg completion\n",
         fnic_state_to_str(fnic->state));
  ret = -1;
 }

 if (!ret) {
  if (fnic->stop_rx_link_events) {
   spin_unlock_irqrestore(&fnic->fnic_lock, flags);
   goto reg_cmpl_handler_end;
  }
  spin_unlock_irqrestore(&fnic->fnic_lock, flags);

  fnic_flush_tx(fnic);
  queue_work(fnic_event_queue, &fnic->frame_work);
 } else {
  spin_unlock_irqrestore(&fnic->fnic_lock, flags);
 }

reg_cmpl_handler_end:
 return ret;
}
