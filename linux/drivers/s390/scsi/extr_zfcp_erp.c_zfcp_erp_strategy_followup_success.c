
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int type; int port; int adapter; } ;






 int _zfcp_erp_lun_reopen_all (int ,int ,char*) ;
 int _zfcp_erp_port_reopen (int ,int ,char*) ;
 int _zfcp_erp_port_reopen_all (int ,int ,char*) ;

__attribute__((used)) static void zfcp_erp_strategy_followup_success(struct zfcp_erp_action *act)
{
 switch (act->type) {
 case 131:
  _zfcp_erp_port_reopen_all(act->adapter, 0, "ersfs_1");
  break;
 case 128:
  _zfcp_erp_port_reopen(act->port, 0, "ersfs_2");
  break;
 case 129:
  _zfcp_erp_lun_reopen_all(act->port, 0, "ersfs_3");
  break;
 case 130:

  break;
 }
}
