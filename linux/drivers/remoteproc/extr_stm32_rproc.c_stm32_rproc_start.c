
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; int reg; scalar_t__ map; } ;
struct stm32_rproc {TYPE_1__ pdds; } ;
struct rproc {int dev; struct stm32_rproc* priv; } ;


 int dev_err (int *,char*) ;
 int regmap_update_bits (scalar_t__,int ,int ,int ) ;
 int stm32_rproc_add_coredump_trace (struct rproc*) ;
 int stm32_rproc_set_hold_boot (struct rproc*,int) ;

__attribute__((used)) static int stm32_rproc_start(struct rproc *rproc)
{
 struct stm32_rproc *ddata = rproc->priv;
 int err;

 stm32_rproc_add_coredump_trace(rproc);


 if (ddata->pdds.map) {
  err = regmap_update_bits(ddata->pdds.map, ddata->pdds.reg,
      ddata->pdds.mask, 0);
  if (err) {
   dev_err(&rproc->dev, "failed to clear pdds\n");
   return err;
  }
 }

 err = stm32_rproc_set_hold_boot(rproc, 0);
 if (err)
  return err;

 return stm32_rproc_set_hold_boot(rproc, 1);
}
