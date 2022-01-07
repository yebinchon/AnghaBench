
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm2xxx_charger {int dummy; } ;


 int PM2XXX_BATT_CTRL_REG2 ;
 int PM2XXX_CHARGER_ENA ;
 int PM2XXX_CH_AUTO_RESUME_EN ;
 int pm2xxx_reg_write (struct pm2xxx_charger*,int ,int) ;

__attribute__((used)) static int pm2xxx_charging_enable_mngt(struct pm2xxx_charger *pm2)
{
 int ret;


 ret = pm2xxx_reg_write(pm2, PM2XXX_BATT_CTRL_REG2,
   (PM2XXX_CH_AUTO_RESUME_EN | PM2XXX_CHARGER_ENA));

 return ret;
}
