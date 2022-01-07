
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef scalar_t__ u32 ;
struct scsi_cmnd {int request; int * cmnd; TYPE_1__* device; } ;
struct Scsi_Host {int host_no; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int CMD_FLAGS (struct scsi_cmnd*) ;
 int FAILED ;
 int SNIC_SCSI_DBG (struct Scsi_Host*,char*,struct scsi_cmnd*,int ,int ,int ,int ) ;
 int SNIC_TRC (int ,int ,int ,int ,int ,int ,int ) ;
 int SNIC_TRC_CMD (struct scsi_cmnd*) ;
 int SNIC_TRC_CMD_STATE_FLAGS (struct scsi_cmnd*) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int snic_cmd_tag (struct scsi_cmnd*) ;
 int snic_reset (struct Scsi_Host*,struct scsi_cmnd*) ;

int
snic_host_reset(struct scsi_cmnd *sc)
{
 struct Scsi_Host *shost = sc->device->host;
 u32 start_time = jiffies;
 int ret = FAILED;

 SNIC_SCSI_DBG(shost,
        "host reset:sc %p sc_cmd 0x%x req %p tag %d flags 0x%llx\n",
        sc, sc->cmnd[0], sc->request,
        snic_cmd_tag(sc), CMD_FLAGS(sc));

 ret = snic_reset(shost, sc);

 SNIC_TRC(shost->host_no, snic_cmd_tag(sc), (ulong) sc,
   jiffies_to_msecs(jiffies - start_time),
   0, SNIC_TRC_CMD(sc), SNIC_TRC_CMD_STATE_FLAGS(sc));

 return ret;
}
