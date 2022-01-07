
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct zfcp_scsi_req_filter {int lun_handle; scalar_t__ tmf_scope; int port_handle; } ;
struct zfcp_scsi_dev {int lun_handle; TYPE_1__* port; } ;
struct zfcp_adapter {int abort_lock; int req_list; } ;
struct TYPE_2__ {int handle; struct zfcp_adapter* adapter; } ;


 scalar_t__ FCP_TMF_LUN_RESET ;
 scalar_t__ FCP_TMF_TGT_RESET ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_reqlist_apply_for_all (int ,int ,struct zfcp_scsi_req_filter*) ;
 int zfcp_scsi_forget_cmnd ;

__attribute__((used)) static void zfcp_scsi_forget_cmnds(struct zfcp_scsi_dev *zsdev, u8 tm_flags)
{
 struct zfcp_adapter *adapter = zsdev->port->adapter;
 struct zfcp_scsi_req_filter filter = {
  .tmf_scope = FCP_TMF_TGT_RESET,
  .port_handle = zsdev->port->handle,
 };
 unsigned long flags;

 if (tm_flags == FCP_TMF_LUN_RESET) {
  filter.tmf_scope = FCP_TMF_LUN_RESET;
  filter.lun_handle = zsdev->lun_handle;
 }





 write_lock_irqsave(&adapter->abort_lock, flags);
 zfcp_reqlist_apply_for_all(adapter->req_list, zfcp_scsi_forget_cmnd,
       &filter);
 write_unlock_irqrestore(&adapter->abort_lock, flags);
}
