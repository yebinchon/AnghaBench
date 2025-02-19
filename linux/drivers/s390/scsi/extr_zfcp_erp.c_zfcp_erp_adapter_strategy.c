
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int status; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int status; } ;
typedef enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;


 int ZFCP_ERP_EXIT ;
 int ZFCP_ERP_FAILED ;
 int ZFCP_ERP_SUCCEEDED ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_ERP_CLOSE_ONLY ;
 int atomic_read (int *) ;
 int ssleep (int) ;
 int zfcp_erp_adapter_strategy_close (struct zfcp_erp_action*) ;
 scalar_t__ zfcp_erp_adapter_strategy_open (struct zfcp_erp_action*) ;

__attribute__((used)) static enum zfcp_erp_act_result zfcp_erp_adapter_strategy(
 struct zfcp_erp_action *act)
{
 struct zfcp_adapter *adapter = act->adapter;

 if (atomic_read(&adapter->status) & ZFCP_STATUS_COMMON_OPEN) {
  zfcp_erp_adapter_strategy_close(act);
  if (act->status & ZFCP_STATUS_ERP_CLOSE_ONLY)
   return ZFCP_ERP_EXIT;
 }

 if (zfcp_erp_adapter_strategy_open(act)) {
  ssleep(8);
  return ZFCP_ERP_FAILED;
 }

 return ZFCP_ERP_SUCCEEDED;
}
