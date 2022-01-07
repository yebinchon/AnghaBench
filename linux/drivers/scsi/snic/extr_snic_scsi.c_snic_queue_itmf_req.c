
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
typedef int u32 ;
struct snic_req_info {int tm_tag; int tgt_id; } ;
struct snic_host_req {int dummy; } ;
struct TYPE_4__ {int hid; } ;
struct snic {int shost; TYPE_2__ config; } ;
struct scsi_lun {int scsi_lun; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_3__ {int lun; } ;


 int SNIC_BUG_ON (int) ;
 int SNIC_HOST_ERR (int ,char*,int ,struct scsi_cmnd*,struct snic_req_info*,int ,int,int) ;
 int SNIC_SCSI_DBG (int ,char*,int ,struct scsi_cmnd*,struct snic_req_info*,int ,int) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;
 struct snic_req_info* req_to_rqi (struct snic_host_req*) ;
 int snic_cmd_tag (struct scsi_cmnd*) ;
 int snic_itmf_init (struct snic_host_req*,int,int ,int ,int ,int ,int ,int ,int ) ;
 int snic_queue_wq_desc (struct snic*,struct snic_host_req*,int) ;

__attribute__((used)) static int
snic_queue_itmf_req(struct snic *snic,
      struct snic_host_req *tmreq,
      struct scsi_cmnd *sc,
      u32 tmf,
      u32 req_id)
{
 struct snic_req_info *rqi = req_to_rqi(tmreq);
 struct scsi_lun lun;
 int tm_tag = snic_cmd_tag(sc) | rqi->tm_tag;
 int ret = 0;

 SNIC_BUG_ON(!rqi);
 SNIC_BUG_ON(!rqi->tm_tag);


 int_to_scsilun(sc->device->lun, &lun);


 snic_itmf_init(tmreq,
         tm_tag,
         snic->config.hid,
         (ulong) rqi,
         0 ,
         req_id,
         rqi->tgt_id,
         lun.scsi_lun,
         tmf);
 ret = snic_queue_wq_desc(snic, tmreq, sizeof(*tmreq));
 if (ret)
  SNIC_HOST_ERR(snic->shost,
         "qitmf:Queuing ITMF(%d) Req sc %p, rqi %p, req_id %d tag %d Failed, ret = %d\n",
         tmf, sc, rqi, req_id, snic_cmd_tag(sc), ret);
 else
  SNIC_SCSI_DBG(snic->shost,
         "qitmf:Queuing ITMF(%d) Req sc %p, rqi %p, req_id %d, tag %d (req_id)- Success.",
         tmf, sc, rqi, req_id, snic_cmd_tag(sc));

 return ret;
}
