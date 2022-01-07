
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnic_wq_copy {int dummy; } ;
struct TYPE_6__ {int fw_resets; } ;
struct TYPE_5__ {int active_fw_reqs; int max_fw_reqs; } ;
struct TYPE_7__ {TYPE_2__ reset_stats; TYPE_1__ fw_stats; } ;
struct fnic {scalar_t__* wq_copy_desc_low; TYPE_4__* lport; TYPE_3__ fnic_stats; int * wq_copy_lock; int in_flight; int tx_queue; int frame_queue; struct vnic_wq_copy* wq_copy; } ;
struct TYPE_8__ {int host; } ;


 int EAGAIN ;
 int FNIC_FLAGS_FWRESET ;
 int FNIC_SCSI_DBG (int ,int ,char*) ;
 int KERN_DEBUG ;
 int SCSI_NO_TAG ;
 int atomic64_inc (int *) ;
 scalar_t__ atomic64_read (int *) ;
 int atomic64_set (int *,scalar_t__) ;
 scalar_t__ atomic_read (int *) ;
 int fnic_clear_state_flags (struct fnic*,int ) ;
 int fnic_queue_wq_copy_desc_fw_reset (struct vnic_wq_copy*,int ) ;
 int fnic_set_state_flags (struct fnic*,int ) ;
 int free_wq_copy_descs (struct fnic*,struct vnic_wq_copy*) ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout (int ) ;
 int skb_queue_purge (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ vnic_wq_copy_desc_avail (struct vnic_wq_copy*) ;

int fnic_fw_reset_handler(struct fnic *fnic)
{
 struct vnic_wq_copy *wq = &fnic->wq_copy[0];
 int ret = 0;
 unsigned long flags;


 fnic_set_state_flags(fnic, FNIC_FLAGS_FWRESET);

 skb_queue_purge(&fnic->frame_queue);
 skb_queue_purge(&fnic->tx_queue);


 while (atomic_read(&fnic->in_flight))
  schedule_timeout(msecs_to_jiffies(1));

 spin_lock_irqsave(&fnic->wq_copy_lock[0], flags);

 if (vnic_wq_copy_desc_avail(wq) <= fnic->wq_copy_desc_low[0])
  free_wq_copy_descs(fnic, wq);

 if (!vnic_wq_copy_desc_avail(wq))
  ret = -EAGAIN;
 else {
  fnic_queue_wq_copy_desc_fw_reset(wq, SCSI_NO_TAG);
  atomic64_inc(&fnic->fnic_stats.fw_stats.active_fw_reqs);
  if (atomic64_read(&fnic->fnic_stats.fw_stats.active_fw_reqs) >
     atomic64_read(&fnic->fnic_stats.fw_stats.max_fw_reqs))
   atomic64_set(&fnic->fnic_stats.fw_stats.max_fw_reqs,
    atomic64_read(
      &fnic->fnic_stats.fw_stats.active_fw_reqs));
 }

 spin_unlock_irqrestore(&fnic->wq_copy_lock[0], flags);

 if (!ret) {
  atomic64_inc(&fnic->fnic_stats.reset_stats.fw_resets);
  FNIC_SCSI_DBG(KERN_DEBUG, fnic->lport->host,
         "Issued fw reset\n");
 } else {
  fnic_clear_state_flags(fnic, FNIC_FLAGS_FWRESET);
  FNIC_SCSI_DBG(KERN_DEBUG, fnic->lport->host,
         "Failed to issue fw reset\n");
 }

 return ret;
}
