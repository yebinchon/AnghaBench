
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pinctrl_pin_desc {int number; } ;
struct pcs_soc_data {unsigned int irq_enable_mask; } ;
struct TYPE_6__ {int cur; struct pinctrl_pin_desc* pa; } ;
struct TYPE_4__ {int npins; } ;
struct pcs_device {unsigned int (* read ) (unsigned int) ;unsigned int base; TYPE_3__ pins; int (* write ) (unsigned int,unsigned int) ;TYPE_2__* res; int dev; TYPE_1__ desc; struct pcs_soc_data socdata; } ;
struct TYPE_5__ {scalar_t__ start; } ;


 int ENOMEM ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int dev_err (int ,char*,int) ;
 unsigned int stub1 (unsigned int) ;
 int stub2 (unsigned int,unsigned int) ;

__attribute__((used)) static int pcs_add_pin(struct pcs_device *pcs, unsigned offset,
  unsigned pin_pos)
{
 struct pcs_soc_data *pcs_soc = &pcs->socdata;
 struct pinctrl_pin_desc *pin;
 int i;

 i = pcs->pins.cur;
 if (i >= pcs->desc.npins) {
  dev_err(pcs->dev, "too many pins, max %i\n",
   pcs->desc.npins);
  return -ENOMEM;
 }

 if (pcs_soc->irq_enable_mask) {
  unsigned val;

  val = pcs->read(pcs->base + offset);
  if (val & pcs_soc->irq_enable_mask) {
   dev_dbg(pcs->dev, "irq enabled at boot for pin at %lx (%x), clearing\n",
    (unsigned long)pcs->res->start + offset, val);
   val &= ~pcs_soc->irq_enable_mask;
   pcs->write(val, pcs->base + offset);
  }
 }

 pin = &pcs->pins.pa[i];
 pin->number = i;
 pcs->pins.cur++;

 return i;
}
