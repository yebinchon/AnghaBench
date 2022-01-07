
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc294x_info {int charge; int supply; } ;


 int LTC294X_REG_ACC_CHARGE_MSB ;
 int ltc294x_read_charge_register (struct ltc294x_info*,int ) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static void ltc294x_update(struct ltc294x_info *info)
{
 int charge = ltc294x_read_charge_register(info, LTC294X_REG_ACC_CHARGE_MSB);

 if (charge != info->charge) {
  info->charge = charge;
  power_supply_changed(info->supply);
 }
}
