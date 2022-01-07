
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int dummy; } ;
struct zfcp_erp_action {int type; struct scsi_device* sdev; struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int dummy; } ;
struct scsi_device {int dummy; } ;
typedef enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;






 int zfcp_erp_strategy_check_adapter (struct zfcp_adapter*,int) ;
 int zfcp_erp_strategy_check_lun (struct scsi_device*,int) ;
 int zfcp_erp_strategy_check_port (struct zfcp_port*,int) ;

__attribute__((used)) static enum zfcp_erp_act_result zfcp_erp_strategy_check_target(
 struct zfcp_erp_action *erp_action, enum zfcp_erp_act_result result)
{
 struct zfcp_adapter *adapter = erp_action->adapter;
 struct zfcp_port *port = erp_action->port;
 struct scsi_device *sdev = erp_action->sdev;

 switch (erp_action->type) {

 case 130:
  result = zfcp_erp_strategy_check_lun(sdev, result);
  break;

 case 128:
 case 129:
  result = zfcp_erp_strategy_check_port(port, result);
  break;

 case 131:
  result = zfcp_erp_strategy_check_adapter(adapter, result);
  break;
 }
 return result;
}
