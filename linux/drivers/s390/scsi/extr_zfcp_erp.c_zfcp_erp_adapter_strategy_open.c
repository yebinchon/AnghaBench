
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int status; int qdio; } ;
typedef enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;


 int ZFCP_ERP_FAILED ;
 int ZFCP_ERP_SUCCEEDED ;
 int ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED ;
 int ZFCP_STATUS_ADAPTER_XCONFIG_OK ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int atomic_andnot (int,int *) ;
 int atomic_or (int ,int *) ;
 int zfcp_erp_adapter_strategy_close (struct zfcp_erp_action*) ;
 scalar_t__ zfcp_erp_adapter_strategy_open_fsf (struct zfcp_erp_action*) ;
 scalar_t__ zfcp_qdio_open (int ) ;

__attribute__((used)) static enum zfcp_erp_act_result zfcp_erp_adapter_strategy_open(
 struct zfcp_erp_action *act)
{
 struct zfcp_adapter *adapter = act->adapter;

 if (zfcp_qdio_open(adapter->qdio)) {
  atomic_andnot(ZFCP_STATUS_ADAPTER_XCONFIG_OK |
      ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED,
      &adapter->status);
  return ZFCP_ERP_FAILED;
 }

 if (zfcp_erp_adapter_strategy_open_fsf(act)) {
  zfcp_erp_adapter_strategy_close(act);
  return ZFCP_ERP_FAILED;
 }

 atomic_or(ZFCP_STATUS_COMMON_OPEN, &adapter->status);

 return ZFCP_ERP_SUCCEEDED;
}
