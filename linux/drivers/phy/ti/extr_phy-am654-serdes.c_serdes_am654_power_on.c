
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct serdes_am654 {int cmu_ok_i_0; struct device* dev; } ;
struct phy {int dummy; } ;
struct device {int dummy; } ;


 int PLL_LOCK_TIME ;
 int SLEEP_TIME ;
 int dev_err (struct device*,char*) ;
 struct serdes_am654* phy_get_drvdata (struct phy*) ;
 int regmap_field_read_poll_timeout (int ,int ,int ,int ,int ) ;
 int serdes_am654_enable_pll (struct serdes_am654*) ;
 int serdes_am654_enable_txrx (struct serdes_am654*) ;

__attribute__((used)) static int serdes_am654_power_on(struct phy *x)
{
 struct serdes_am654 *phy = phy_get_drvdata(x);
 struct device *dev = phy->dev;
 int ret;
 u32 val;

 ret = serdes_am654_enable_pll(phy);
 if (ret) {
  dev_err(dev, "Failed to enable PLL\n");
  return ret;
 }

 ret = serdes_am654_enable_txrx(phy);
 if (ret) {
  dev_err(dev, "Failed to enable TX RX\n");
  return ret;
 }

 return regmap_field_read_poll_timeout(phy->cmu_ok_i_0, val, val,
           SLEEP_TIME, PLL_LOCK_TIME);
}
