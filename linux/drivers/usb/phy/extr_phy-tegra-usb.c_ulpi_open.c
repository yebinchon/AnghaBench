
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct tegra_usb_phy {scalar_t__ regs; TYPE_2__* ulpi; TYPE_1__ u_phy; int reset_gpio; int clk; } ;
struct TYPE_4__ {scalar_t__ io_priv; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ ULPI_VIEWPORT ;
 int dev_err (int ,char*,...) ;
 int devm_clk_get (int ,char*) ;
 int devm_gpio_request (int ,int ,char*) ;
 int gpio_direction_output (int ,int ) ;
 TYPE_2__* otg_ulpi_create (int *,int ) ;
 int ulpi_viewport_access_ops ;

__attribute__((used)) static int ulpi_open(struct tegra_usb_phy *phy)
{
 int err;

 phy->clk = devm_clk_get(phy->u_phy.dev, "ulpi-link");
 if (IS_ERR(phy->clk)) {
  err = PTR_ERR(phy->clk);
  dev_err(phy->u_phy.dev, "Failed to get ULPI clock: %d\n", err);
  return err;
 }

 err = devm_gpio_request(phy->u_phy.dev, phy->reset_gpio,
  "ulpi_phy_reset_b");
 if (err < 0) {
  dev_err(phy->u_phy.dev, "Request failed for GPIO %d: %d\n",
   phy->reset_gpio, err);
  return err;
 }

 err = gpio_direction_output(phy->reset_gpio, 0);
 if (err < 0) {
  dev_err(phy->u_phy.dev,
   "GPIO %d direction not set to output: %d\n",
   phy->reset_gpio, err);
  return err;
 }

 phy->ulpi = otg_ulpi_create(&ulpi_viewport_access_ops, 0);
 if (!phy->ulpi) {
  dev_err(phy->u_phy.dev, "Failed to create ULPI OTG\n");
  err = -ENOMEM;
  return err;
 }

 phy->ulpi->io_priv = phy->regs + ULPI_VIEWPORT;
 return 0;
}
