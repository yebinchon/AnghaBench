
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int SUNXI_SRAM_EMAC_CLOCK_REG ;

__attribute__((used)) static bool sunxi_sram_regmap_accessible_reg(struct device *dev,
          unsigned int reg)
{
 if (reg == SUNXI_SRAM_EMAC_CLOCK_REG)
  return 1;
 return 0;
}
