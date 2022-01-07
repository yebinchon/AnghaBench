
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_rproc {int clk; int sw_reset; TYPE_1__* config; int pwr_reset; int boot_offset; int boot_base; } ;
struct rproc {int bootaddr; int dev; struct st_rproc* priv; } ;
struct TYPE_2__ {scalar_t__ pwr_reset; scalar_t__ sw_reset; int bootaddr_mask; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int st_rproc_start(struct rproc *rproc)
{
 struct st_rproc *ddata = rproc->priv;
 int err;

 regmap_update_bits(ddata->boot_base, ddata->boot_offset,
      ddata->config->bootaddr_mask, rproc->bootaddr);

 err = clk_enable(ddata->clk);
 if (err) {
  dev_err(&rproc->dev, "Failed to enable clock\n");
  return err;
 }

 if (ddata->config->sw_reset) {
  err = reset_control_deassert(ddata->sw_reset);
  if (err) {
   dev_err(&rproc->dev, "Failed to deassert S/W Reset\n");
   goto sw_reset_fail;
  }
 }

 if (ddata->config->pwr_reset) {
  err = reset_control_deassert(ddata->pwr_reset);
  if (err) {
   dev_err(&rproc->dev, "Failed to deassert Power Reset\n");
   goto pwr_reset_fail;
  }
 }

 dev_info(&rproc->dev, "Started from 0x%x\n", rproc->bootaddr);

 return 0;


pwr_reset_fail:
 if (ddata->config->pwr_reset)
  reset_control_assert(ddata->sw_reset);
sw_reset_fail:
 clk_disable(ddata->clk);

 return err;
}
