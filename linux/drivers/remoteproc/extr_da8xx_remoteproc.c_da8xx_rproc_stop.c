
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct rproc {TYPE_1__ dev; struct da8xx_rproc* priv; } ;
struct device {int dummy; } ;
struct da8xx_rproc {int dsp_clk; int dsp_reset; } ;


 int clk_disable_unprepare (int ) ;
 int dev_err (struct device*,char*,int) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int da8xx_rproc_stop(struct rproc *rproc)
{
 struct da8xx_rproc *drproc = rproc->priv;
 struct device *dev = rproc->dev.parent;
 int ret;

 ret = reset_control_assert(drproc->dsp_reset);
 if (ret) {
  dev_err(dev, "reset_control_assert() failed: %d\n", ret);
  return ret;
 }

 clk_disable_unprepare(drproc->dsp_clk);

 return 0;
}
