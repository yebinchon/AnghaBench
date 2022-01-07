
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sc27xx_efuse {int dev; scalar_t__ base; int regmap; } ;


 int SC27XX_EFUSE_POLL_DELAY_US ;
 int SC27XX_EFUSE_POLL_TIMEOUT ;
 scalar_t__ SC27XX_EFUSE_STATUS ;
 int dev_err (int ,char*) ;
 int regmap_read_poll_timeout (int ,scalar_t__,int,int,int ,int ) ;

__attribute__((used)) static int sc27xx_efuse_poll_status(struct sc27xx_efuse *efuse, u32 bits)
{
 int ret;
 u32 val;

 ret = regmap_read_poll_timeout(efuse->regmap,
           efuse->base + SC27XX_EFUSE_STATUS,
           val, (val & bits),
           SC27XX_EFUSE_POLL_DELAY_US,
           SC27XX_EFUSE_POLL_TIMEOUT);
 if (ret) {
  dev_err(efuse->dev, "timeout to update the efuse status\n");
  return ret;
 }

 return 0;
}
