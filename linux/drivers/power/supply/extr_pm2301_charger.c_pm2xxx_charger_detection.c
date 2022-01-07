
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pm2xxx_charger {int dev; } ;


 int PM2XXX_INT2_S_ITVPWR1PLUG ;
 int PM2XXX_INT2_S_ITVPWR2PLUG ;
 int PM2XXX_SRCE_REG_INT2 ;
 int dev_err (int ,char*) ;
 int pm2xxx_reg_read (struct pm2xxx_charger*,int ,int*) ;

__attribute__((used)) static int pm2xxx_charger_detection(struct pm2xxx_charger *pm2, u8 *val)
{
 int ret;

 ret = pm2xxx_reg_read(pm2, PM2XXX_SRCE_REG_INT2, val);

 if (ret < 0) {
  dev_err(pm2->dev, "Charger detection failed\n");
  goto out;
 }

 *val &= (PM2XXX_INT2_S_ITVPWR1PLUG | PM2XXX_INT2_S_ITVPWR2PLUG);

out:
 return ret;
}
