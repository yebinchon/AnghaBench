
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct zfcp_scsi_dev {TYPE_6__* port; } ;
struct zfcp_fsf_req {int status; TYPE_9__* adapter; TYPE_4__* qtcb; } ;
struct scsi_device {int dummy; } ;
struct TYPE_15__ {int * word; } ;
struct fsf_qtcb_header {int fsf_status; TYPE_5__ fsf_status_qual; } ;
struct TYPE_17__ {TYPE_1__* ccw_device; } ;
struct TYPE_16__ {scalar_t__ wwpn; } ;
struct TYPE_12__ {int fcp_cmnd_length; int data_direction; } ;
struct TYPE_13__ {TYPE_2__ io; } ;
struct TYPE_14__ {TYPE_3__ bottom; struct fsf_qtcb_header header; } ;
struct TYPE_11__ {int dev; } ;
 int FSF_SQ_INVOKE_LINK_TEST_PROCEDURE ;
 int ZFCP_STATUS_COMMON_ACCESS_BOXED ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int dev_err (int *,char*,int ,...) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 scalar_t__ unlikely (int) ;
 int zfcp_erp_adapter_reopen (TYPE_9__*,int ,char*) ;
 int zfcp_erp_adapter_shutdown (TYPE_9__*,int ,char*) ;
 int zfcp_erp_lun_reopen (struct scsi_device*,int ,char*) ;
 int zfcp_erp_port_reopen (TYPE_6__*,int ,char*) ;
 int zfcp_erp_set_lun_status (struct scsi_device*,int ) ;
 int zfcp_erp_set_port_status (TYPE_6__*,int ) ;
 int zfcp_fc_test_link (TYPE_6__*) ;
 int zfcp_fsf_class_not_supp (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_scsi_dev_lun (struct scsi_device*) ;

__attribute__((used)) static void zfcp_fsf_fcp_handler_common(struct zfcp_fsf_req *req,
     struct scsi_device *sdev)
{
 struct zfcp_scsi_dev *zfcp_sdev;
 struct fsf_qtcb_header *header = &req->qtcb->header;

 if (unlikely(req->status & ZFCP_STATUS_FSFREQ_ERROR))
  return;

 zfcp_sdev = sdev_to_zfcp(sdev);

 switch (header->fsf_status) {
 case 133:
 case 129:
  zfcp_erp_adapter_reopen(req->adapter, 0, "fssfch1");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 134:
 case 131:
  zfcp_erp_port_reopen(zfcp_sdev->port, 0, "fssfch2");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 128:
  zfcp_fsf_class_not_supp(req);
  break;
 case 135:
  dev_err(&req->adapter->ccw_device->dev,
   "Incorrect direction %d, LUN 0x%016Lx on port "
   "0x%016Lx closed\n",
   req->qtcb->bottom.io.data_direction,
   (unsigned long long)zfcp_scsi_dev_lun(sdev),
   (unsigned long long)zfcp_sdev->port->wwpn);
  zfcp_erp_adapter_shutdown(req->adapter, 0, "fssfch3");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 136:
  dev_err(&req->adapter->ccw_device->dev,
   "Incorrect FCP_CMND length %d, FCP device closed\n",
   req->qtcb->bottom.io.fcp_cmnd_length);
  zfcp_erp_adapter_shutdown(req->adapter, 0, "fssfch4");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 130:
  zfcp_erp_set_port_status(zfcp_sdev->port,
      ZFCP_STATUS_COMMON_ACCESS_BOXED);
  zfcp_erp_port_reopen(zfcp_sdev->port,
         ZFCP_STATUS_COMMON_ERP_FAILED, "fssfch5");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 132:
  zfcp_erp_set_lun_status(sdev, ZFCP_STATUS_COMMON_ACCESS_BOXED);
  zfcp_erp_lun_reopen(sdev, ZFCP_STATUS_COMMON_ERP_FAILED,
        "fssfch6");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 137:
  if (header->fsf_status_qual.word[0] ==
      FSF_SQ_INVOKE_LINK_TEST_PROCEDURE)
   zfcp_fc_test_link(zfcp_sdev->port);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 }
}
