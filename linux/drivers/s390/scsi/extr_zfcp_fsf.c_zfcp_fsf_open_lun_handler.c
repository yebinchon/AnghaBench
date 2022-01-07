
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int hla; int cssid; } ;
union fsf_status_qual {int * word; TYPE_4__ fsf_queue_designator; } ;
struct zfcp_scsi_dev {int status; int lun_handle; TYPE_6__* port; } ;
struct zfcp_fsf_req {int status; TYPE_1__* qtcb; struct scsi_device* data; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {TYPE_5__* ccw_device; } ;
struct scsi_device {int dummy; } ;
struct fsf_qtcb_header {int fsf_status; int lun_handle; union fsf_status_qual fsf_status_qual; } ;
struct TYPE_14__ {scalar_t__ wwpn; TYPE_3__* adapter; } ;
struct TYPE_13__ {int dev; } ;
struct TYPE_11__ {TYPE_2__* ccw_device; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {struct fsf_qtcb_header header; } ;
 int ZFCP_STATUS_COMMON_ACCESS_BOXED ;
 int ZFCP_STATUS_COMMON_ACCESS_DENIED ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int atomic_andnot (int,int *) ;
 int atomic_or (int ,int *) ;
 int dev_warn (int *,char*,unsigned long long,unsigned long long,...) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*) ;
 int zfcp_erp_port_reopen (TYPE_6__*,int,char*) ;
 int zfcp_erp_set_lun_status (struct scsi_device*,int) ;
 int zfcp_erp_set_port_status (TYPE_6__*,int) ;
 int zfcp_fc_test_link (TYPE_6__*) ;
 scalar_t__ zfcp_scsi_dev_lun (struct scsi_device*) ;

__attribute__((used)) static void zfcp_fsf_open_lun_handler(struct zfcp_fsf_req *req)
{
 struct zfcp_adapter *adapter = req->adapter;
 struct scsi_device *sdev = req->data;
 struct zfcp_scsi_dev *zfcp_sdev;
 struct fsf_qtcb_header *header = &req->qtcb->header;
 union fsf_status_qual *qual = &header->fsf_status_qual;

 if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
  return;

 zfcp_sdev = sdev_to_zfcp(sdev);

 atomic_andnot(ZFCP_STATUS_COMMON_ACCESS_DENIED |
     ZFCP_STATUS_COMMON_ACCESS_BOXED,
     &zfcp_sdev->status);

 switch (header->fsf_status) {

 case 130:
  zfcp_erp_adapter_reopen(adapter, 0, "fsouh_1");

 case 134:
  break;
 case 131:
  zfcp_erp_set_port_status(zfcp_sdev->port,
      ZFCP_STATUS_COMMON_ACCESS_BOXED);
  zfcp_erp_port_reopen(zfcp_sdev->port,
         ZFCP_STATUS_COMMON_ERP_FAILED, "fsouh_2");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 133:
  if (qual->word[0])
   dev_warn(&zfcp_sdev->port->adapter->ccw_device->dev,
     "LUN 0x%016Lx on port 0x%016Lx is already in "
     "use by CSS%d, MIF Image ID %x\n",
     zfcp_scsi_dev_lun(sdev),
     (unsigned long long)zfcp_sdev->port->wwpn,
     qual->fsf_queue_designator.cssid,
     qual->fsf_queue_designator.hla);
  zfcp_erp_set_lun_status(sdev,
     ZFCP_STATUS_COMMON_ERP_FAILED |
     ZFCP_STATUS_COMMON_ACCESS_DENIED);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 132:
  dev_warn(&adapter->ccw_device->dev,
    "No handle is available for LUN "
    "0x%016Lx on port 0x%016Lx\n",
    (unsigned long long)zfcp_scsi_dev_lun(sdev),
    (unsigned long long)zfcp_sdev->port->wwpn);
  zfcp_erp_set_lun_status(sdev, ZFCP_STATUS_COMMON_ERP_FAILED);

 case 135:
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 137:
  switch (header->fsf_status_qual.word[0]) {
  case 129:
   zfcp_fc_test_link(zfcp_sdev->port);

  case 128:
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
   break;
  }
  break;

 case 136:
  zfcp_sdev->lun_handle = header->lun_handle;
  atomic_or(ZFCP_STATUS_COMMON_OPEN, &zfcp_sdev->status);
  break;
 }
}
