
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct list_head {int dummy; } ;
struct fw_scsi_abrt_cls_wr {int sub_opcode_to_chk_all_io; } ;
struct TYPE_2__ {int sm_list; } ;
struct csio_ioreq {TYPE_1__ sm; int wr_status; } ;
struct csio_hw {int lock; } ;
struct csio_fl_dma_buf {int dummy; } ;


 scalar_t__ FW_SCSI_ABRT_CLS_WR ;
 scalar_t__ FW_SCSI_ABRT_CLS_WR_SUB_OPCODE_GET (int ) ;
 int csio_dbg (struct csio_hw*,char*,char*,struct csio_ioreq*,int ) ;
 int csio_hw_to_scsim (struct csio_hw*) ;
 int csio_put_scsi_ioreq_lock (struct csio_hw*,int ,struct csio_ioreq*) ;
 int csio_scsi_aborted (struct csio_ioreq*,struct list_head*) ;
 int csio_scsi_closed (struct csio_ioreq*,struct list_head*) ;
 void* csio_scsi_cmnd (struct csio_ioreq*) ;
 struct csio_ioreq* csio_scsi_cmpl_handler (struct csio_hw*,void*,int ,struct csio_fl_dma_buf*,int *,scalar_t__**) ;
 int csio_scsi_completed (struct csio_ioreq*,struct list_head*) ;
 scalar_t__ likely (struct csio_ioreq*) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
csio_process_scsi_cmpl(struct csio_hw *hw, void *wr, uint32_t len,
   struct csio_fl_dma_buf *flb, void *cbfn_q)
{
 struct csio_ioreq *ioreq;
 uint8_t *scsiwr;
 uint8_t subop;
 void *cmnd;
 unsigned long flags;

 ioreq = csio_scsi_cmpl_handler(hw, wr, len, flb, ((void*)0), &scsiwr);
 if (likely(ioreq)) {
  if (unlikely(*scsiwr == FW_SCSI_ABRT_CLS_WR)) {
   subop = FW_SCSI_ABRT_CLS_WR_SUB_OPCODE_GET(
     ((struct fw_scsi_abrt_cls_wr *)
         scsiwr)->sub_opcode_to_chk_all_io);

   csio_dbg(hw, "%s cmpl recvd ioreq:%p status:%d\n",
        subop ? "Close" : "Abort",
        ioreq, ioreq->wr_status);

   spin_lock_irqsave(&hw->lock, flags);
   if (subop)
    csio_scsi_closed(ioreq,
       (struct list_head *)cbfn_q);
   else
    csio_scsi_aborted(ioreq,
        (struct list_head *)cbfn_q);
   cmnd = csio_scsi_cmnd(ioreq);
   if (unlikely(cmnd == ((void*)0)))
    list_del_init(&ioreq->sm.sm_list);

   spin_unlock_irqrestore(&hw->lock, flags);

   if (unlikely(cmnd == ((void*)0)))
    csio_put_scsi_ioreq_lock(hw,
      csio_hw_to_scsim(hw), ioreq);
  } else {
   spin_lock_irqsave(&hw->lock, flags);
   csio_scsi_completed(ioreq, (struct list_head *)cbfn_q);
   spin_unlock_irqrestore(&hw->lock, flags);
  }
 }
}
