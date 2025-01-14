
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm2xxx_charger {int dev; } ;


 int PM2XXX_INT6_ITVPWR1DROP ;
 int PM2XXX_INT6_ITVPWR1VALIDFALL ;
 int PM2XXX_INT6_ITVPWR1VALIDRISE ;
 int PM2XXX_INT6_ITVPWR2DROP ;
 int PM2XXX_INT6_ITVPWR2VALIDFALL ;
 int PM2XXX_INT6_ITVPWR2VALIDRISE ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static int pm2_int_reg5(void *pm2_data, int val)
{
 struct pm2xxx_charger *pm2 = pm2_data;
 int ret = 0;

 if (val & (PM2XXX_INT6_ITVPWR2DROP | PM2XXX_INT6_ITVPWR1DROP)) {
  dev_dbg(pm2->dev, "VMPWR drop to VBAT level\n");
 }

 if (val & (PM2XXX_INT6_ITVPWR2VALIDRISE |
   PM2XXX_INT6_ITVPWR1VALIDRISE |
   PM2XXX_INT6_ITVPWR2VALIDFALL |
   PM2XXX_INT6_ITVPWR1VALIDFALL)) {
  dev_dbg(pm2->dev, "Falling/Rising edge on WPWR1/2\n");
 }

 return ret;
}
