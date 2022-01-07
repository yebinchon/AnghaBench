
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct tegra_usb_phy {int pll_u; scalar_t__ is_ulpi_phy; TYPE_1__ u_phy; int vbus; TYPE_2__* freq; } ;
struct TYPE_5__ {unsigned long freq; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_get_parent (int ) ;
 unsigned long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int devm_clk_get (int ,char*) ;
 int regulator_enable (int ) ;
 TYPE_2__* tegra_freq_table ;
 int ulpi_open (struct tegra_usb_phy*) ;
 int utmip_pad_open (struct tegra_usb_phy*) ;

__attribute__((used)) static int tegra_usb_phy_init(struct tegra_usb_phy *phy)
{
 unsigned long parent_rate;
 int i;
 int err;

 phy->pll_u = devm_clk_get(phy->u_phy.dev, "pll_u");
 if (IS_ERR(phy->pll_u)) {
  err = PTR_ERR(phy->pll_u);
  dev_err(phy->u_phy.dev,
   "Failed to get pll_u clock: %d\n", err);
  return err;
 }

 err = clk_prepare_enable(phy->pll_u);
 if (err)
  return err;

 parent_rate = clk_get_rate(clk_get_parent(phy->pll_u));
 for (i = 0; i < ARRAY_SIZE(tegra_freq_table); i++) {
  if (tegra_freq_table[i].freq == parent_rate) {
   phy->freq = &tegra_freq_table[i];
   break;
  }
 }
 if (!phy->freq) {
  dev_err(phy->u_phy.dev, "Invalid pll_u parent rate %ld\n",
   parent_rate);
  err = -EINVAL;
  goto fail;
 }

 if (!IS_ERR(phy->vbus)) {
  err = regulator_enable(phy->vbus);
  if (err) {
   dev_err(phy->u_phy.dev,
    "Failed to enable USB VBUS regulator: %d\n",
    err);
   goto fail;
  }
 }

 if (phy->is_ulpi_phy)
  err = ulpi_open(phy);
 else
  err = utmip_pad_open(phy);
 if (err < 0)
  goto fail;

 return 0;

fail:
 clk_disable_unprepare(phy->pll_u);
 return err;
}
