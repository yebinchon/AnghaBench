
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int step; } ;
typedef enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;


 int ENOMEM ;
 int ZFCP_ERP_CONTINUES ;
 int ZFCP_ERP_FAILED ;
 int ZFCP_ERP_NOMEM ;
 int ZFCP_ERP_STEP_PORT_CLOSING ;
 int zfcp_fsf_close_port (struct zfcp_erp_action*) ;

__attribute__((used)) static enum zfcp_erp_act_result zfcp_erp_port_strategy_close(
 struct zfcp_erp_action *erp_action)
{
 int retval;

 retval = zfcp_fsf_close_port(erp_action);
 if (retval == -ENOMEM)
  return ZFCP_ERP_NOMEM;
 erp_action->step = ZFCP_ERP_STEP_PORT_CLOSING;
 if (retval)
  return ZFCP_ERP_FAILED;
 return ZFCP_ERP_CONTINUES;
}
