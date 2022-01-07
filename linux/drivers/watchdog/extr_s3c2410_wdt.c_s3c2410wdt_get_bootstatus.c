
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c2410_wdt {TYPE_1__* drv_data; int dev; int pmureg; } ;
struct TYPE_2__ {int quirks; int rst_stat_bit; int rst_stat_reg; } ;


 unsigned int BIT (int ) ;
 int QUIRK_HAS_RST_STAT ;
 unsigned int WDIOF_CARDRESET ;
 int dev_warn (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static inline unsigned int s3c2410wdt_get_bootstatus(struct s3c2410_wdt *wdt)
{
 unsigned int rst_stat;
 int ret;

 if (!(wdt->drv_data->quirks & QUIRK_HAS_RST_STAT))
  return 0;

 ret = regmap_read(wdt->pmureg, wdt->drv_data->rst_stat_reg, &rst_stat);
 if (ret)
  dev_warn(wdt->dev, "Couldn't get RST_STAT register\n");
 else if (rst_stat & BIT(wdt->drv_data->rst_stat_bit))
  return WDIOF_CARDRESET;

 return 0;
}
