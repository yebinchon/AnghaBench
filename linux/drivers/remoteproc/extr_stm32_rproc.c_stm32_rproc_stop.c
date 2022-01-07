
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mask; int reg; scalar_t__ map; } ;
struct stm32_rproc {TYPE_2__ pdds; int rst; TYPE_1__* mb; } ;
struct rproc {scalar_t__ state; int dev; struct stm32_rproc* priv; } ;
struct TYPE_3__ {scalar_t__ chan; } ;


 scalar_t__ RPROC_OFFLINE ;
 int STM32_MBX_SHUTDOWN ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int mbox_send_message (scalar_t__,int*) ;
 int regmap_update_bits (scalar_t__,int ,int ,int) ;
 int reset_control_assert (int ) ;
 int stm32_rproc_mbox_idx (struct rproc*,int ) ;
 int stm32_rproc_set_hold_boot (struct rproc*,int) ;

__attribute__((used)) static int stm32_rproc_stop(struct rproc *rproc)
{
 struct stm32_rproc *ddata = rproc->priv;
 int err, dummy_data, idx;


 if (rproc->state != RPROC_OFFLINE) {
  idx = stm32_rproc_mbox_idx(rproc, STM32_MBX_SHUTDOWN);
  if (idx >= 0 && ddata->mb[idx].chan) {

   err = mbox_send_message(ddata->mb[idx].chan,
      &dummy_data);
   if (err < 0)
    dev_warn(&rproc->dev, "warning: remote FW shutdown without ack\n");
  }
 }

 err = stm32_rproc_set_hold_boot(rproc, 1);
 if (err)
  return err;

 err = reset_control_assert(ddata->rst);
 if (err) {
  dev_err(&rproc->dev, "failed to assert the reset\n");
  return err;
 }


 if (ddata->pdds.map) {
  err = regmap_update_bits(ddata->pdds.map, ddata->pdds.reg,
      ddata->pdds.mask, 1);
  if (err) {
   dev_err(&rproc->dev, "failed to set pdds\n");
   return err;
  }
 }

 return 0;
}
