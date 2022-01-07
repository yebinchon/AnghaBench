
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ typ; } ;
struct snic_tgt {TYPE_1__ tdata; } ;
struct snic {int max_tag_id; int shost; } ;
struct scsi_cmnd {int device; } ;
typedef int spinlock_t ;


 int SNIC_HOST_ERR (int ,char*,int,int) ;
 int SNIC_ITMF_ABTS_TASK ;
 int SNIC_ITMF_ABTS_TASK_TERM ;
 int SNIC_SCSI_DBG (int ,char*,...) ;
 scalar_t__ SNIC_TGT_DAS ;
 int SUCCESS ;
 struct scsi_cmnd* scsi_host_find_tag (int ,int) ;
 int scsi_target (int ) ;
 struct snic* shost_priv (int ) ;
 int snic_internal_abort_io (struct snic*,struct scsi_cmnd*,int) ;
 int * snic_io_lock_tag (struct snic*,int) ;
 int snic_tgt_to_shost (struct snic_tgt*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct snic_tgt* starget_to_tgt (int ) ;

int
snic_tgt_scsi_abort_io(struct snic_tgt *tgt)
{
 struct snic *snic = ((void*)0);
 struct scsi_cmnd *sc = ((void*)0);
 struct snic_tgt *sc_tgt = ((void*)0);
 spinlock_t *io_lock = ((void*)0);
 unsigned long flags;
 int ret = 0, tag, abt_cnt = 0, tmf = 0;

 if (!tgt)
  return -1;

 snic = shost_priv(snic_tgt_to_shost(tgt));
 SNIC_SCSI_DBG(snic->shost, "tgt_abt_io: Cleaning Pending IOs.\n");

 if (tgt->tdata.typ == SNIC_TGT_DAS)
  tmf = SNIC_ITMF_ABTS_TASK;
 else
  tmf = SNIC_ITMF_ABTS_TASK_TERM;

 for (tag = 0; tag < snic->max_tag_id; tag++) {
  io_lock = snic_io_lock_tag(snic, tag);

  spin_lock_irqsave(io_lock, flags);
  sc = scsi_host_find_tag(snic->shost, tag);
  if (!sc) {
   spin_unlock_irqrestore(io_lock, flags);

   continue;
  }

  sc_tgt = starget_to_tgt(scsi_target(sc->device));
  if (sc_tgt != tgt) {
   spin_unlock_irqrestore(io_lock, flags);

   continue;
  }
  spin_unlock_irqrestore(io_lock, flags);

  ret = snic_internal_abort_io(snic, sc, tmf);
  if (ret < 0) {
   SNIC_HOST_ERR(snic->shost,
          "tgt_abt_io: Tag %x, Failed w err = %d\n",
          tag, ret);

   continue;
  }

  if (ret == SUCCESS)
   abt_cnt++;
 }

 SNIC_SCSI_DBG(snic->shost, "tgt_abt_io: abt_cnt = %d\n", abt_cnt);

 return 0;
}
