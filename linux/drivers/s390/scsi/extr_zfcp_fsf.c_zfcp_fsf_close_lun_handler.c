
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct zfcp_scsi_dev {int status; TYPE_4__* port; } ;
struct zfcp_fsf_req {int status; TYPE_3__* qtcb; struct scsi_device* data; } ;
struct scsi_device {int dummy; } ;
struct TYPE_10__ {int adapter; } ;
struct TYPE_7__ {int * word; } ;
struct TYPE_8__ {int fsf_status; TYPE_1__ fsf_status_qual; } ;
struct TYPE_9__ {TYPE_2__ header; } ;
 int ZFCP_STATUS_COMMON_ACCESS_BOXED ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int atomic_andnot (int ,int *) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int zfcp_erp_adapter_reopen (int ,int ,char*) ;
 int zfcp_erp_port_reopen (TYPE_4__*,int ,char*) ;
 int zfcp_erp_set_port_status (TYPE_4__*,int ) ;
 int zfcp_fc_test_link (TYPE_4__*) ;

__attribute__((used)) static void zfcp_fsf_close_lun_handler(struct zfcp_fsf_req *req)
{
 struct scsi_device *sdev = req->data;
 struct zfcp_scsi_dev *zfcp_sdev;

 if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
  return;

 zfcp_sdev = sdev_to_zfcp(sdev);

 switch (req->qtcb->header.fsf_status) {
 case 130:
  zfcp_erp_adapter_reopen(zfcp_sdev->port->adapter, 0, "fscuh_1");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 132:
  zfcp_erp_port_reopen(zfcp_sdev->port, 0, "fscuh_2");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 131:
  zfcp_erp_set_port_status(zfcp_sdev->port,
      ZFCP_STATUS_COMMON_ACCESS_BOXED);
  zfcp_erp_port_reopen(zfcp_sdev->port,
         ZFCP_STATUS_COMMON_ERP_FAILED, "fscuh_3");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 134:
  switch (req->qtcb->header.fsf_status_qual.word[0]) {
  case 129:
   zfcp_fc_test_link(zfcp_sdev->port);

  case 128:
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
   break;
  }
  break;
 case 133:
  atomic_andnot(ZFCP_STATUS_COMMON_OPEN, &zfcp_sdev->status);
  break;
 }
}
