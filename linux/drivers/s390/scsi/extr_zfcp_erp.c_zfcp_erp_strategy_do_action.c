
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int type; } ;
typedef enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;






 int ZFCP_ERP_FAILED ;
 int zfcp_erp_adapter_strategy (struct zfcp_erp_action*) ;
 int zfcp_erp_lun_strategy (struct zfcp_erp_action*) ;
 int zfcp_erp_port_forced_strategy (struct zfcp_erp_action*) ;
 int zfcp_erp_port_strategy (struct zfcp_erp_action*) ;

__attribute__((used)) static enum zfcp_erp_act_result zfcp_erp_strategy_do_action(
 struct zfcp_erp_action *erp_action)
{
 switch (erp_action->type) {
 case 131:
  return zfcp_erp_adapter_strategy(erp_action);
 case 128:
  return zfcp_erp_port_forced_strategy(erp_action);
 case 129:
  return zfcp_erp_port_strategy(erp_action);
 case 130:
  return zfcp_erp_lun_strategy(erp_action);
 }
 return ZFCP_ERP_FAILED;
}
