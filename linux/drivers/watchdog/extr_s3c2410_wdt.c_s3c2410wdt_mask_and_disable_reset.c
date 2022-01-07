
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct s3c2410_wdt {int dev; TYPE_1__* drv_data; int pmureg; } ;
struct TYPE_2__ {int mask_bit; int quirks; int mask_reset_reg; int disable_reg; } ;


 int QUIRK_HAS_PMU_CONFIG ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int s3c2410wdt_mask_and_disable_reset(struct s3c2410_wdt *wdt, bool mask)
{
 int ret;
 u32 mask_val = 1 << wdt->drv_data->mask_bit;
 u32 val = 0;


 if (!(wdt->drv_data->quirks & QUIRK_HAS_PMU_CONFIG))
  return 0;

 if (mask)
  val = mask_val;

 ret = regmap_update_bits(wdt->pmureg,
   wdt->drv_data->disable_reg,
   mask_val, val);
 if (ret < 0)
  goto error;

 ret = regmap_update_bits(wdt->pmureg,
   wdt->drv_data->mask_reset_reg,
   mask_val, val);
 error:
 if (ret < 0)
  dev_err(wdt->dev, "failed to update reg(%d)\n", ret);

 return ret;
}
