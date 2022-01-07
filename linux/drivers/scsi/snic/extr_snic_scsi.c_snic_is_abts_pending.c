
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct snic_req_info {int dummy; } ;
struct snic {scalar_t__ max_tag_id; int shost; } ;
struct scsi_device {int dummy; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
typedef int spinlock_t ;


 scalar_t__ CMD_SP (struct scsi_cmnd*) ;
 scalar_t__ CMD_STATE (struct scsi_cmnd*) ;
 scalar_t__ SNIC_IOREQ_ABTS_PENDING ;
 int SNIC_SCSI_DBG (int ,char*,int ) ;
 struct scsi_cmnd* scsi_host_find_tag (int ,scalar_t__) ;
 int * snic_io_lock_tag (struct snic*,scalar_t__) ;
 int snic_ioreq_state_to_str (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
snic_is_abts_pending(struct snic *snic, struct scsi_cmnd *lr_sc)
{
 struct snic_req_info *rqi = ((void*)0);
 struct scsi_cmnd *sc = ((void*)0);
 struct scsi_device *lr_sdev = ((void*)0);
 spinlock_t *io_lock = ((void*)0);
 u32 tag;
 unsigned long flags;

 if (lr_sc)
  lr_sdev = lr_sc->device;


 for (tag = 0; tag < snic->max_tag_id; tag++) {
  io_lock = snic_io_lock_tag(snic, tag);

  spin_lock_irqsave(io_lock, flags);
  sc = scsi_host_find_tag(snic->shost, tag);

  if (!sc || (lr_sc && (sc->device != lr_sdev || sc == lr_sc))) {
   spin_unlock_irqrestore(io_lock, flags);

   continue;
  }

  rqi = (struct snic_req_info *) CMD_SP(sc);
  if (!rqi) {
   spin_unlock_irqrestore(io_lock, flags);

   continue;
  }





  SNIC_SCSI_DBG(snic->shost, "Found IO in %s on LUN\n",
         snic_ioreq_state_to_str(CMD_STATE(sc)));

  if (CMD_STATE(sc) == SNIC_IOREQ_ABTS_PENDING) {
   spin_unlock_irqrestore(io_lock, flags);

   return 1;
  }

  spin_unlock_irqrestore(io_lock, flags);
 }

 return 0;
}
