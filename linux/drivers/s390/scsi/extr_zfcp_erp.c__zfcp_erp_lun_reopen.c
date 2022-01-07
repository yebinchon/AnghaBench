
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct zfcp_scsi_dev {TYPE_1__* port; } ;
struct zfcp_adapter {int dummy; } ;
struct scsi_device {int dummy; } ;
struct TYPE_2__ {struct zfcp_adapter* adapter; } ;


 int ZFCP_ERP_ACTION_REOPEN_LUN ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int zfcp_erp_action_enqueue (int ,struct zfcp_adapter*,TYPE_1__*,struct scsi_device*,char*,int ) ;
 int zfcp_erp_lun_block (struct scsi_device*,int) ;

__attribute__((used)) static void _zfcp_erp_lun_reopen(struct scsi_device *sdev, int clear,
     char *dbftag, u32 act_status)
{
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(sdev);
 struct zfcp_adapter *adapter = zfcp_sdev->port->adapter;

 zfcp_erp_lun_block(sdev, clear);

 zfcp_erp_action_enqueue(ZFCP_ERP_ACTION_REOPEN_LUN, adapter,
    zfcp_sdev->port, sdev, dbftag, act_status);
}
