
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct tegra_usb_phy {int pad_clk; TYPE_1__ u_phy; int pad_rst; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int devm_clk_get (int ,char*) ;
 int devm_reset_control_get_optional_shared (int ,char*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;
 int utmip_pad_lock ;

__attribute__((used)) static int utmip_pad_open(struct tegra_usb_phy *phy)
{
 int ret;

 phy->pad_clk = devm_clk_get(phy->u_phy.dev, "utmi-pads");
 if (IS_ERR(phy->pad_clk)) {
  ret = PTR_ERR(phy->pad_clk);
  dev_err(phy->u_phy.dev,
   "Failed to get UTMIP pad clock: %d\n", ret);
  return ret;
 }

 phy->pad_rst = devm_reset_control_get_optional_shared(
      phy->u_phy.dev, "utmi-pads");
 if (IS_ERR(phy->pad_rst)) {
  ret = PTR_ERR(phy->pad_rst);
  dev_err(phy->u_phy.dev,
   "Failed to get UTMI-pads reset: %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(phy->pad_clk);
 if (ret) {
  dev_err(phy->u_phy.dev,
   "Failed to enable UTMI-pads clock: %d\n", ret);
  return ret;
 }

 spin_lock(&utmip_pad_lock);

 ret = reset_control_deassert(phy->pad_rst);
 if (ret) {
  dev_err(phy->u_phy.dev,
   "Failed to initialize UTMI-pads reset: %d\n", ret);
  goto unlock;
 }

 ret = reset_control_assert(phy->pad_rst);
 if (ret) {
  dev_err(phy->u_phy.dev,
   "Failed to assert UTMI-pads reset: %d\n", ret);
  goto unlock;
 }

 udelay(1);

 ret = reset_control_deassert(phy->pad_rst);
 if (ret)
  dev_err(phy->u_phy.dev,
   "Failed to deassert UTMI-pads reset: %d\n", ret);
unlock:
 spin_unlock(&utmip_pad_lock);

 clk_disable_unprepare(phy->pad_clk);

 return ret;
}
