
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct tegra_usb_phy {int pad_clk; TYPE_1__ u_phy; int pad_rst; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int reset_control_assert (int ) ;
 int udelay (int) ;

__attribute__((used)) static int utmip_pad_close(struct tegra_usb_phy *phy)
{
 int ret;

 ret = clk_prepare_enable(phy->pad_clk);
 if (ret) {
  dev_err(phy->u_phy.dev,
   "Failed to enable UTMI-pads clock: %d\n", ret);
  return ret;
 }

 ret = reset_control_assert(phy->pad_rst);
 if (ret)
  dev_err(phy->u_phy.dev,
   "Failed to assert UTMI-pads reset: %d\n", ret);

 udelay(1);

 clk_disable_unprepare(phy->pad_clk);

 return ret;
}
