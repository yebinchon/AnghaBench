
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm2xxx_charger {int dev; } ;


 int PM2XXX_INT3_ITAUTOTIMEOUTWD ;
 int PM2XXX_INT3_ITCHCCWD ;
 int PM2XXX_INT3_ITCHCVWD ;
 int PM2XXX_INT3_ITCHPRECHARGEWD ;
 int dev_dbg (int ,char*) ;
 int pm2xxx_charger_wd_exp_mngt (struct pm2xxx_charger*,int) ;

__attribute__((used)) static int pm2_int_reg2(void *pm2_data, int val)
{
 struct pm2xxx_charger *pm2 = pm2_data;
 int ret = 0;

 if (val & PM2XXX_INT3_ITAUTOTIMEOUTWD)
  ret = pm2xxx_charger_wd_exp_mngt(pm2, val);

 if (val & (PM2XXX_INT3_ITCHPRECHARGEWD |
    PM2XXX_INT3_ITCHCCWD | PM2XXX_INT3_ITCHCVWD)) {
  dev_dbg(pm2->dev,
   "Watchdog occurred for precharge, CC and CV charge\n");
 }

 return ret;
}
