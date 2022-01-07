
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snic_tgt {int id; } ;
struct TYPE_4__ {int tgt_not_rdy; } ;
struct TYPE_5__ {TYPE_1__ misc; } ;
struct snic {int ios_inflight; TYPE_2__ s_stats; } ;
struct scsi_cmnd {int result; TYPE_3__* device; int * cmnd; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {int lun; } ;


 int SCSI_MLQUEUE_HOST_BUSY ;
 int SNIC_HOST_ERR (struct Scsi_Host*,char*,...) ;
 size_t SNIC_ONLINE ;
 int SNIC_SCSI_DBG (struct Scsi_Host*,char*,struct scsi_cmnd*,int ,int ,int ) ;
 int atomic64_inc (int *) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int scsi_target (TYPE_3__*) ;
 struct snic* shost_priv (struct Scsi_Host*) ;
 int snic_cmd_tag (struct scsi_cmnd*) ;
 size_t snic_get_state (struct snic*) ;
 int snic_issue_scsi_req (struct snic*,struct snic_tgt*,struct scsi_cmnd*) ;
 int* snic_state_str ;
 int snic_tgt_chkready (struct snic_tgt*) ;
 struct snic_tgt* starget_to_tgt (int ) ;
 int stub1 (struct scsi_cmnd*) ;

int
snic_queuecommand(struct Scsi_Host *shost, struct scsi_cmnd *sc)
{
 struct snic_tgt *tgt = ((void*)0);
 struct snic *snic = shost_priv(shost);
 int ret;

 tgt = starget_to_tgt(scsi_target(sc->device));
 ret = snic_tgt_chkready(tgt);
 if (ret) {
  SNIC_HOST_ERR(shost, "Tgt %p id %d Not Ready.\n", tgt, tgt->id);
  atomic64_inc(&snic->s_stats.misc.tgt_not_rdy);
  sc->result = ret;
  sc->scsi_done(sc);

  return 0;
 }

 if (snic_get_state(snic) != SNIC_ONLINE) {
  SNIC_HOST_ERR(shost, "snic state is %s\n",
         snic_state_str[snic_get_state(snic)]);

  return SCSI_MLQUEUE_HOST_BUSY;
 }
 atomic_inc(&snic->ios_inflight);

 SNIC_SCSI_DBG(shost, "sc %p Tag %d (sc %0x) lun %lld in snic_qcmd\n",
        sc, snic_cmd_tag(sc), sc->cmnd[0], sc->device->lun);

 ret = snic_issue_scsi_req(snic, tgt, sc);
 if (ret) {
  SNIC_HOST_ERR(shost, "Failed to Q, Scsi Req w/ err %d.\n", ret);
  ret = SCSI_MLQUEUE_HOST_BUSY;
 }

 atomic_dec(&snic->ios_inflight);

 return ret;
}
