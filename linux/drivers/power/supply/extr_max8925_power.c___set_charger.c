
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8925_power_info {int (* set_charger ) (int) ;int gpm; struct max8925_chip* chip; } ;
struct max8925_chip {int dev; } ;


 int MAX8925_CHG_CNTL1 ;
 int dev_dbg (int ,char*,char*) ;
 int max8925_set_bits (int ,int ,int,int) ;
 int stub1 (int) ;
 int stub2 (int) ;

__attribute__((used)) static int __set_charger(struct max8925_power_info *info, int enable)
{
 struct max8925_chip *chip = info->chip;
 if (enable) {

  if (info->set_charger)
   info->set_charger(1);

  max8925_set_bits(info->gpm, MAX8925_CHG_CNTL1, 1 << 7, 0);
 } else {

  max8925_set_bits(info->gpm, MAX8925_CHG_CNTL1, 1 << 7, 1 << 7);
  if (info->set_charger)
   info->set_charger(0);
 }
 dev_dbg(chip->dev, "%s\n", (enable) ? "Enable charger"
  : "Disable charger");
 return 0;
}
