
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int status; } ;


 int ZFCP_STATUS_ERP_DISMISSED ;
 scalar_t__ zfcp_erp_action_is_running (struct zfcp_erp_action*) ;
 int zfcp_erp_action_ready (struct zfcp_erp_action*) ;

__attribute__((used)) static void zfcp_erp_action_dismiss(struct zfcp_erp_action *act)
{
 act->status |= ZFCP_STATUS_ERP_DISMISSED;
 if (zfcp_erp_action_is_running(act))
  zfcp_erp_action_ready(act);
}
