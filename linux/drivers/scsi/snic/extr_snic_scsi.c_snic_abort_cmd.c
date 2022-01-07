
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
typedef scalar_t__ u32 ;
struct snic {TYPE_2__* shost; } ;
struct scsi_cmnd {int request; int * cmnd; TYPE_1__* device; } ;
struct TYPE_5__ {int host_no; } ;
struct TYPE_4__ {int host; } ;


 int FAST_IO_FAIL ;
 int SNIC_HOST_ERR (TYPE_2__*,char*,int) ;
 scalar_t__ SNIC_ONLINE ;
 int SNIC_SCSI_DBG (TYPE_2__*,char*,...) ;
 int SNIC_TRC (int ,int,int ,int ,int ,int ,int ) ;
 int SNIC_TRC_CMD (struct scsi_cmnd*) ;
 int SNIC_TRC_CMD_STATE_FLAGS (struct scsi_cmnd*) ;
 int SUCCESS ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 struct snic* shost_priv (int ) ;
 int snic_abort_finish (struct snic*,struct scsi_cmnd*) ;
 int snic_cmd_tag (struct scsi_cmnd*) ;
 scalar_t__ snic_get_state (struct snic*) ;
 int snic_send_abort_and_wait (struct snic*,struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

int
snic_abort_cmd(struct scsi_cmnd *sc)
{
 struct snic *snic = shost_priv(sc->device->host);
 int ret = SUCCESS, tag = snic_cmd_tag(sc);
 u32 start_time = jiffies;

 SNIC_SCSI_DBG(snic->shost, "abt_cmd:sc %p :0x%x :req = %p :tag = %d\n",
         sc, sc->cmnd[0], sc->request, tag);

 if (unlikely(snic_get_state(snic) != SNIC_ONLINE)) {
  SNIC_HOST_ERR(snic->shost,
         "abt_cmd: tag %x Parent Devs are not rdy\n",
         tag);
  ret = FAST_IO_FAIL;

  goto abort_end;
 }


 ret = snic_send_abort_and_wait(snic, sc);
 if (ret)
  goto abort_end;

 ret = snic_abort_finish(snic, sc);

abort_end:
 SNIC_TRC(snic->shost->host_no, tag, (ulong) sc,
   jiffies_to_msecs(jiffies - start_time), 0,
   SNIC_TRC_CMD(sc), SNIC_TRC_CMD_STATE_FLAGS(sc));

 SNIC_SCSI_DBG(snic->shost,
        "abts: Abort Req Status = %s\n",
        (ret == SUCCESS) ? "SUCCESS" :
         ((ret == FAST_IO_FAIL) ? "FAST_IO_FAIL" : "FAILED"));

 return ret;
}
