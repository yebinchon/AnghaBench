
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct rproc {int bootaddr; scalar_t__ priv; TYPE_1__ dev; } ;
struct reset_control {int dummy; } ;
struct device {int dummy; } ;
struct da8xx_rproc {int bootreg; struct reset_control* dsp_reset; struct clk* dsp_clk; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (struct device*,char*,...) ;
 int reset_control_deassert (struct reset_control*) ;
 int writel (int,int ) ;

__attribute__((used)) static int da8xx_rproc_start(struct rproc *rproc)
{
 struct device *dev = rproc->dev.parent;
 struct da8xx_rproc *drproc = (struct da8xx_rproc *)rproc->priv;
 struct clk *dsp_clk = drproc->dsp_clk;
 struct reset_control *dsp_reset = drproc->dsp_reset;
 int ret;


 if (rproc->bootaddr & 0x3ff) {
  dev_err(dev, "invalid boot address: must be aligned to 1KB\n");

  return -EINVAL;
 }

 writel(rproc->bootaddr, drproc->bootreg);

 ret = clk_prepare_enable(dsp_clk);
 if (ret) {
  dev_err(dev, "clk_prepare_enable() failed: %d\n", ret);
  return ret;
 }

 ret = reset_control_deassert(dsp_reset);
 if (ret) {
  dev_err(dev, "reset_control_deassert() failed: %d\n", ret);
  clk_disable_unprepare(dsp_clk);
  return ret;
 }

 return 0;
}
