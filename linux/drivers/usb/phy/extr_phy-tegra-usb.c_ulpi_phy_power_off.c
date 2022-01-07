
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_usb_phy {int reset_gpio; int clk; } ;


 int clk_disable (int ) ;
 int gpio_direction_output (int ,int ) ;

__attribute__((used)) static int ulpi_phy_power_off(struct tegra_usb_phy *phy)
{
 clk_disable(phy->clk);
 return gpio_direction_output(phy->reset_gpio, 0);
}
