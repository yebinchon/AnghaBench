
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_usb_phy {int pll_u; int is_ulpi_phy; int vbus; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int regulator_disable (int ) ;
 int utmip_pad_close (struct tegra_usb_phy*) ;

__attribute__((used)) static void tegra_usb_phy_close(struct tegra_usb_phy *phy)
{
 if (!IS_ERR(phy->vbus))
  regulator_disable(phy->vbus);

 if (!phy->is_ulpi_phy)
  utmip_pad_close(phy);

 clk_disable_unprepare(phy->pll_u);
}
