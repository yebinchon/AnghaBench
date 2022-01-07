
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union fsf_status_qual {int * word; } ;
struct zfcp_scsi_dev {TYPE_3__* port; } ;
struct zfcp_fsf_req {int status; TYPE_2__* qtcb; struct scsi_device* data; } ;
struct scsi_device {int dummy; } ;
struct TYPE_8__ {int adapter; } ;
struct TYPE_6__ {int fsf_status; union fsf_status_qual fsf_status_qual; } ;
struct TYPE_7__ {TYPE_1__ header; } ;
 int ZFCP_STATUS_COMMON_ACCESS_BOXED ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED ;
 int ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int zfcp_erp_adapter_reopen (int ,int ,char*) ;
 int zfcp_erp_lun_reopen (struct scsi_device*,int ,char*) ;
 int zfcp_erp_port_reopen (TYPE_3__*,int ,char*) ;
 int zfcp_erp_set_lun_status (struct scsi_device*,int ) ;
 int zfcp_erp_set_port_status (TYPE_3__*,int ) ;
 int zfcp_fc_test_link (TYPE_3__*) ;

__attribute__((used)) static void zfcp_fsf_abort_fcp_command_handler(struct zfcp_fsf_req *req)
{
 struct scsi_device *sdev = req->data;
 struct zfcp_scsi_dev *zfcp_sdev;
 union fsf_status_qual *fsq = &req->qtcb->header.fsf_status_qual;

 if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
  return;

 zfcp_sdev = sdev_to_zfcp(sdev);

 switch (req->qtcb->header.fsf_status) {
 case 130:
  if (fsq->word[0] == fsq->word[1]) {
   zfcp_erp_adapter_reopen(zfcp_sdev->port->adapter, 0,
      "fsafch1");
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  }
  break;
 case 132:
  if (fsq->word[0] == fsq->word[1]) {
   zfcp_erp_port_reopen(zfcp_sdev->port, 0, "fsafch2");
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  }
  break;
 case 135:
  req->status |= ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED;
  break;
 case 131:
  zfcp_erp_set_port_status(zfcp_sdev->port,
      ZFCP_STATUS_COMMON_ACCESS_BOXED);
  zfcp_erp_port_reopen(zfcp_sdev->port,
         ZFCP_STATUS_COMMON_ERP_FAILED, "fsafch3");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 133:
  zfcp_erp_set_lun_status(sdev, ZFCP_STATUS_COMMON_ACCESS_BOXED);
  zfcp_erp_lun_reopen(sdev, ZFCP_STATUS_COMMON_ERP_FAILED,
        "fsafch4");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
                break;
 case 136:
  switch (fsq->word[0]) {
  case 129:
   zfcp_fc_test_link(zfcp_sdev->port);

  case 128:
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
   break;
  }
  break;
 case 134:
  req->status |= ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED;
  break;
 }
}
