
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm2xxx_charger {int dev; } ;


 int PM2XXX_INT2_ITVPWR1PLUG ;
 int PM2XXX_INT2_ITVPWR1UNPLUG ;
 int PM2XXX_INT2_ITVPWR2PLUG ;
 int PM2XXX_INT2_ITVPWR2UNPLUG ;
 int dev_dbg (int ,char*) ;
 int pm2xxx_charger_itv_pwr_plug_mngt (struct pm2xxx_charger*,int) ;
 int pm2xxx_charger_itv_pwr_unplug_mngt (struct pm2xxx_charger*,int) ;

__attribute__((used)) static int pm2_int_reg1(void *pm2_data, int val)
{
 struct pm2xxx_charger *pm2 = pm2_data;
 int ret = 0;

 if (val & (PM2XXX_INT2_ITVPWR1PLUG | PM2XXX_INT2_ITVPWR2PLUG)) {
  dev_dbg(pm2->dev , "Main charger plugged\n");
  ret = pm2xxx_charger_itv_pwr_plug_mngt(pm2, val &
   (PM2XXX_INT2_ITVPWR1PLUG | PM2XXX_INT2_ITVPWR2PLUG));
 }

 if (val &
  (PM2XXX_INT2_ITVPWR1UNPLUG | PM2XXX_INT2_ITVPWR2UNPLUG)) {
  dev_dbg(pm2->dev , "Main charger unplugged\n");
  ret = pm2xxx_charger_itv_pwr_unplug_mngt(pm2, val &
      (PM2XXX_INT2_ITVPWR1UNPLUG |
      PM2XXX_INT2_ITVPWR2UNPLUG));
 }

 return ret;
}
