
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vnic_wq_copy {int dummy; } ;
struct scsi_lun {int scsi_lun; } ;
struct scsi_cmnd {TYPE_3__* request; TYPE_2__* device; } ;
struct misc_stats {int devrst_cpwq_alloc_failures; } ;
struct fnic_io_req {int port_id; } ;
struct TYPE_11__ {int active_fw_reqs; int max_fw_reqs; } ;
struct TYPE_12__ {TYPE_5__ fw_stats; struct misc_stats misc_stats; } ;
struct TYPE_10__ {int ed_tov; int ra_tov; } ;
struct fnic {scalar_t__* wq_copy_desc_low; int in_flight; int * wq_copy_lock; TYPE_6__ fnic_stats; TYPE_4__ config; TYPE_1__* lport; struct vnic_wq_copy* wq_copy; } ;
struct Scsi_Host {int * host_lock; } ;
struct TYPE_9__ {int tag; } ;
struct TYPE_8__ {int lun; } ;
struct TYPE_7__ {struct Scsi_Host* host; } ;


 int EAGAIN ;
 int FAILED ;
 int FCPIO_ITMF_LUN_RESET ;
 int FNIC_FLAGS_IO_BLOCKED ;
 int FNIC_SCSI_DBG (int ,struct Scsi_Host*,char*) ;
 int FNIC_TAG_DEV_RST ;
 int KERN_DEBUG ;
 int SCSI_NO_TAG ;
 int atomic64_inc (int *) ;
 scalar_t__ atomic64_read (int *) ;
 int atomic64_set (int *,scalar_t__) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int fnic_chk_state_flags_locked (struct fnic*,int ) ;
 int fnic_queue_wq_copy_desc_itmf (struct vnic_wq_copy*,int,int ,int ,int ,int ,int ,int ,int ) ;
 int free_wq_copy_descs (struct fnic*,struct vnic_wq_copy*) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vnic_wq_copy_desc_avail (struct vnic_wq_copy*) ;

__attribute__((used)) static inline int fnic_queue_dr_io_req(struct fnic *fnic,
           struct scsi_cmnd *sc,
           struct fnic_io_req *io_req)
{
 struct vnic_wq_copy *wq = &fnic->wq_copy[0];
 struct Scsi_Host *host = fnic->lport->host;
 struct misc_stats *misc_stats = &fnic->fnic_stats.misc_stats;
 struct scsi_lun fc_lun;
 int ret = 0;
 unsigned long intr_flags;

 spin_lock_irqsave(host->host_lock, intr_flags);
 if (unlikely(fnic_chk_state_flags_locked(fnic,
      FNIC_FLAGS_IO_BLOCKED))) {
  spin_unlock_irqrestore(host->host_lock, intr_flags);
  return FAILED;
 } else
  atomic_inc(&fnic->in_flight);
 spin_unlock_irqrestore(host->host_lock, intr_flags);

 spin_lock_irqsave(&fnic->wq_copy_lock[0], intr_flags);

 if (vnic_wq_copy_desc_avail(wq) <= fnic->wq_copy_desc_low[0])
  free_wq_copy_descs(fnic, wq);

 if (!vnic_wq_copy_desc_avail(wq)) {
  FNIC_SCSI_DBG(KERN_DEBUG, fnic->lport->host,
     "queue_dr_io_req failure - no descriptors\n");
  atomic64_inc(&misc_stats->devrst_cpwq_alloc_failures);
  ret = -EAGAIN;
  goto lr_io_req_end;
 }


 int_to_scsilun(sc->device->lun, &fc_lun);

 fnic_queue_wq_copy_desc_itmf(wq, sc->request->tag | FNIC_TAG_DEV_RST,
         0, FCPIO_ITMF_LUN_RESET, SCSI_NO_TAG,
         fc_lun.scsi_lun, io_req->port_id,
         fnic->config.ra_tov, fnic->config.ed_tov);

 atomic64_inc(&fnic->fnic_stats.fw_stats.active_fw_reqs);
 if (atomic64_read(&fnic->fnic_stats.fw_stats.active_fw_reqs) >
    atomic64_read(&fnic->fnic_stats.fw_stats.max_fw_reqs))
  atomic64_set(&fnic->fnic_stats.fw_stats.max_fw_reqs,
    atomic64_read(&fnic->fnic_stats.fw_stats.active_fw_reqs));

lr_io_req_end:
 spin_unlock_irqrestore(&fnic->wq_copy_lock[0], intr_flags);
 atomic_dec(&fnic->in_flight);

 return ret;
}
