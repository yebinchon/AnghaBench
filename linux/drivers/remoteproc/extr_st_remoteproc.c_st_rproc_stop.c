
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_rproc {int clk; int pwr_reset; TYPE_1__* config; int sw_reset; } ;
struct rproc {int dev; struct st_rproc* priv; } ;
struct TYPE_2__ {scalar_t__ pwr_reset; scalar_t__ sw_reset; } ;


 int clk_disable (int ) ;
 int dev_err (int *,char*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int st_rproc_stop(struct rproc *rproc)
{
 struct st_rproc *ddata = rproc->priv;
 int sw_err = 0, pwr_err = 0;

 if (ddata->config->sw_reset) {
  sw_err = reset_control_assert(ddata->sw_reset);
  if (sw_err)
   dev_err(&rproc->dev, "Failed to assert S/W Reset\n");
 }

 if (ddata->config->pwr_reset) {
  pwr_err = reset_control_assert(ddata->pwr_reset);
  if (pwr_err)
   dev_err(&rproc->dev, "Failed to assert Power Reset\n");
 }

 clk_disable(ddata->clk);

 return sw_err ?: pwr_err;
}
