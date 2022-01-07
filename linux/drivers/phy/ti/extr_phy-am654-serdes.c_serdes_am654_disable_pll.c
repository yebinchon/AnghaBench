
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdes_am654 {int pll_enable; struct device* dev; } ;
struct device {int dummy; } ;


 int PLL_DISABLE_STATE ;
 int dev_err (struct device*,char*) ;
 int regmap_field_write (int ,int ) ;

__attribute__((used)) static void serdes_am654_disable_pll(struct serdes_am654 *phy)
{
 struct device *dev = phy->dev;
 int ret;

 ret = regmap_field_write(phy->pll_enable, PLL_DISABLE_STATE);
 if (ret)
  dev_err(dev, "Failed to disable PLL\n");
}
