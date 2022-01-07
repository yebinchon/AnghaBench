
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct typec_partner_desc {int usb_pd; int * identity; int accessory; } ;
struct tps6598x {int partner; int port; int partner_identity; } ;
typedef enum typec_pwr_opmode { ____Placeholder_typec_pwr_opmode } typec_pwr_opmode ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TPS_POWER_STATUS_PWROPMODE (int ) ;
 int TPS_REG_POWER_STATUS ;
 int TPS_STATUS_DATAROLE (int ) ;
 int TPS_STATUS_PORTROLE (int ) ;
 int TPS_STATUS_VCONN (int ) ;
 int TYPEC_ACCESSORY_NONE ;
 int TYPEC_PWR_MODE_PD ;
 int tps6598x_read16 (struct tps6598x*,int ,int *) ;
 int tps6598x_read_partner_identity (struct tps6598x*) ;
 int typec_partner_set_identity (int ) ;
 int typec_register_partner (int ,struct typec_partner_desc*) ;
 int typec_set_data_role (int ,int ) ;
 int typec_set_pwr_opmode (int ,int) ;
 int typec_set_pwr_role (int ,int ) ;
 int typec_set_vconn_role (int ,int ) ;

__attribute__((used)) static int tps6598x_connect(struct tps6598x *tps, u32 status)
{
 struct typec_partner_desc desc;
 enum typec_pwr_opmode mode;
 u16 pwr_status;
 int ret;

 if (tps->partner)
  return 0;

 ret = tps6598x_read16(tps, TPS_REG_POWER_STATUS, &pwr_status);
 if (ret < 0)
  return ret;

 mode = TPS_POWER_STATUS_PWROPMODE(pwr_status);

 desc.usb_pd = mode == TYPEC_PWR_MODE_PD;
 desc.accessory = TYPEC_ACCESSORY_NONE;
 desc.identity = ((void*)0);

 if (desc.usb_pd) {
  ret = tps6598x_read_partner_identity(tps);
  if (ret)
   return ret;
  desc.identity = &tps->partner_identity;
 }

 typec_set_pwr_opmode(tps->port, mode);
 typec_set_pwr_role(tps->port, TPS_STATUS_PORTROLE(status));
 typec_set_vconn_role(tps->port, TPS_STATUS_VCONN(status));
 typec_set_data_role(tps->port, TPS_STATUS_DATAROLE(status));

 tps->partner = typec_register_partner(tps->port, &desc);
 if (IS_ERR(tps->partner))
  return PTR_ERR(tps->partner);

 if (desc.identity)
  typec_partner_set_identity(tps->partner);

 return 0;
}
