
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_powergate {int reset; TYPE_1__* pmc; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int of_reset_control_array_get_exclusive_released (struct device_node*) ;
 int pr_err (char*,int) ;
 int reset_control_acquire (int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int reset_control_put (int ) ;
 int reset_control_release (int ) ;

__attribute__((used)) static int tegra_powergate_of_get_resets(struct tegra_powergate *pg,
      struct device_node *np, bool off)
{
 struct device *dev = pg->pmc->dev;
 int err;

 pg->reset = of_reset_control_array_get_exclusive_released(np);
 if (IS_ERR(pg->reset)) {
  err = PTR_ERR(pg->reset);
  dev_err(dev, "failed to get device resets: %d\n", err);
  return err;
 }

 err = reset_control_acquire(pg->reset);
 if (err < 0) {
  pr_err("failed to acquire resets: %d\n", err);
  goto out;
 }

 if (off) {
  err = reset_control_assert(pg->reset);
 } else {
  err = reset_control_deassert(pg->reset);
  if (err < 0)
   goto out;

  reset_control_release(pg->reset);
 }

out:
 if (err) {
  reset_control_release(pg->reset);
  reset_control_put(pg->reset);
 }

 return err;
}
