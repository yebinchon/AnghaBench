
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tps6598x {int port; int * partner; } ;


 int IS_ERR (int *) ;
 int TPS_STATUS_DATAROLE (int ) ;
 int TPS_STATUS_PORTROLE (int ) ;
 int TPS_STATUS_VCONN (int ) ;
 int TYPEC_PWR_MODE_USB ;
 int typec_set_data_role (int ,int ) ;
 int typec_set_pwr_opmode (int ,int ) ;
 int typec_set_pwr_role (int ,int ) ;
 int typec_set_vconn_role (int ,int ) ;
 int typec_unregister_partner (int *) ;

__attribute__((used)) static void tps6598x_disconnect(struct tps6598x *tps, u32 status)
{
 if (!IS_ERR(tps->partner))
  typec_unregister_partner(tps->partner);
 tps->partner = ((void*)0);
 typec_set_pwr_opmode(tps->port, TYPEC_PWR_MODE_USB);
 typec_set_pwr_role(tps->port, TPS_STATUS_PORTROLE(status));
 typec_set_vconn_role(tps->port, TPS_STATUS_VCONN(status));
 typec_set_data_role(tps->port, TPS_STATUS_DATAROLE(status));
}
