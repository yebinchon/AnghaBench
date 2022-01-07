
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic_req_info {int tm_tag; } ;
struct snic {int dummy; } ;
struct scsi_cmnd {int dummy; } ;


 int SNIC_ITMF_LUN_RESET ;
 int SNIC_TAG_DEV_RST ;
 int snic_issue_tm_req (struct snic*,struct snic_req_info*,struct scsi_cmnd*,int ) ;

__attribute__((used)) static int
snic_queue_dr_req(struct snic *snic,
    struct snic_req_info *rqi,
    struct scsi_cmnd *sc)
{

 rqi->tm_tag |= SNIC_TAG_DEV_RST;

 return snic_issue_tm_req(snic, rqi, sc, SNIC_ITMF_LUN_RESET);
}
