
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic_req_info {int tm_tag; } ;
struct snic {int shost; } ;
struct scsi_cmnd {int dummy; } ;


 int SNIC_SCSI_DBG (int ,char*,struct scsi_cmnd*,struct snic_req_info*,int ,int) ;
 int SNIC_TAG_ABORT ;
 int snic_cmd_tag (struct scsi_cmnd*) ;
 int snic_issue_tm_req (struct snic*,struct snic_req_info*,struct scsi_cmnd*,int) ;

__attribute__((used)) static int
snic_queue_abort_req(struct snic *snic,
       struct snic_req_info *rqi,
       struct scsi_cmnd *sc,
       int tmf)
{
 SNIC_SCSI_DBG(snic->shost, "q_abtreq: sc %p, rqi %p, tag %x, tmf %d\n",
        sc, rqi, snic_cmd_tag(sc), tmf);


 rqi->tm_tag |= SNIC_TAG_ABORT;

 return snic_issue_tm_req(snic, rqi, sc, tmf);
}
