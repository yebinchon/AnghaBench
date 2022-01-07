
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_charger_info {scalar_t__ online; int i2c; int dev; } ;


 int CC1_MODE_OFF ;
 int CHARGE_THRESHOLD ;
 int PM8607_CHG_CTRL1 ;
 int dev_dbg (int ,char*) ;
 int pm860x_set_bits (int ,int ,int,int ) ;
 int set_vbatt_threshold (struct pm860x_charger_info*,int,int ) ;

__attribute__((used)) static void stop_charge(struct pm860x_charger_info *info, int vbatt)
{
 dev_dbg(info->dev, "Stop charging!\n");
 pm860x_set_bits(info->i2c, PM8607_CHG_CTRL1, 3, CC1_MODE_OFF);
 if (vbatt > CHARGE_THRESHOLD && info->online)
  set_vbatt_threshold(info, CHARGE_THRESHOLD, 0);
}
