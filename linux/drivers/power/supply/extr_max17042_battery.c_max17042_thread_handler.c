
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct max17042_chip {int battery; TYPE_1__* client; int regmap; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int MAX17042_STATUS ;
 int STATUS_INTR_SOCMAX_BIT ;
 int STATUS_INTR_SOCMIN_BIT ;
 int dev_info (int *,char*) ;
 int max17042_set_soc_threshold (struct max17042_chip*,int) ;
 int power_supply_changed (int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static irqreturn_t max17042_thread_handler(int id, void *dev)
{
 struct max17042_chip *chip = dev;
 u32 val;

 regmap_read(chip->regmap, MAX17042_STATUS, &val);
 if ((val & STATUS_INTR_SOCMIN_BIT) ||
  (val & STATUS_INTR_SOCMAX_BIT)) {
  dev_info(&chip->client->dev, "SOC threshold INTR\n");
  max17042_set_soc_threshold(chip, 1);
 }

 power_supply_changed(chip->battery);
 return IRQ_HANDLED;
}
