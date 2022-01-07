
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zfcp_scsi_dev {int status; } ;
struct zfcp_port {int status; } ;
struct zfcp_erp_action {int type; int status; struct scsi_device* sdev; struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int status; } ;
struct scsi_device {int dummy; } ;
typedef enum zfcp_erp_act_type { ____Placeholder_zfcp_erp_act_type } zfcp_erp_act_type ;
typedef enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;






 int ZFCP_ERP_EXIT ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int _zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*) ;
 int _zfcp_erp_lun_reopen (struct scsi_device*,int ,char*,int ) ;
 int _zfcp_erp_port_reopen (struct zfcp_port*,int ,char*) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int zfcp_erp_strat_change_det (int *,int ) ;

__attribute__((used)) static enum zfcp_erp_act_result zfcp_erp_strategy_statechange(
 struct zfcp_erp_action *act, enum zfcp_erp_act_result result)
{
 enum zfcp_erp_act_type type = act->type;
 struct zfcp_adapter *adapter = act->adapter;
 struct zfcp_port *port = act->port;
 struct scsi_device *sdev = act->sdev;
 struct zfcp_scsi_dev *zfcp_sdev;
 u32 erp_status = act->status;

 switch (type) {
 case 131:
  if (zfcp_erp_strat_change_det(&adapter->status, erp_status)) {
   _zfcp_erp_adapter_reopen(adapter,
       ZFCP_STATUS_COMMON_ERP_FAILED,
       "ersscg1");
   return ZFCP_ERP_EXIT;
  }
  break;

 case 128:
 case 129:
  if (zfcp_erp_strat_change_det(&port->status, erp_status)) {
   _zfcp_erp_port_reopen(port,
           ZFCP_STATUS_COMMON_ERP_FAILED,
           "ersscg2");
   return ZFCP_ERP_EXIT;
  }
  break;

 case 130:
  zfcp_sdev = sdev_to_zfcp(sdev);
  if (zfcp_erp_strat_change_det(&zfcp_sdev->status, erp_status)) {
   _zfcp_erp_lun_reopen(sdev,
          ZFCP_STATUS_COMMON_ERP_FAILED,
          "ersscg3", 0);
   return ZFCP_ERP_EXIT;
  }
  break;
 }
 return result;
}
