
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sunxi_pinctrl {int lock; scalar_t__ membase; TYPE_1__* desc; } ;
struct regulator {int dummy; } ;
struct TYPE_2__ {int io_bias_cfg_variant; unsigned int pin_base; } ;




 int EINVAL ;
 int IO_BIAS_MASK ;
 unsigned int PINS_PER_BANK ;
 scalar_t__ PIO_POW_MOD_SEL_REG ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (scalar_t__) ;
 int regulator_get_voltage (struct regulator*) ;
 scalar_t__ sunxi_grp_config_reg (unsigned int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sunxi_pinctrl_set_io_bias_cfg(struct sunxi_pinctrl *pctl,
      unsigned pin,
      struct regulator *supply)
{
 unsigned short bank = pin / PINS_PER_BANK;
 unsigned long flags;
 u32 val, reg;
 int uV;

 if (!pctl->desc->io_bias_cfg_variant)
  return 0;

 uV = regulator_get_voltage(supply);
 if (uV < 0)
  return uV;


 if (uV == 0)
  return 0;

 switch (pctl->desc->io_bias_cfg_variant) {
 case 129:




  if (uV <= 1800000)
   val = 0x0;
  else if (uV <= 2500000)
   val = 0x6;
  else if (uV <= 2800000)
   val = 0x9;
  else if (uV <= 3000000)
   val = 0xA;
  else
   val = 0xD;

  pin -= pctl->desc->pin_base;

  reg = readl(pctl->membase + sunxi_grp_config_reg(pin));
  reg &= ~IO_BIAS_MASK;
  writel(reg | val, pctl->membase + sunxi_grp_config_reg(pin));
  return 0;
 case 128:
  val = uV <= 1800000 ? 1 : 0;

  raw_spin_lock_irqsave(&pctl->lock, flags);
  reg = readl(pctl->membase + PIO_POW_MOD_SEL_REG);
  reg &= ~(1 << bank);
  writel(reg | val << bank, pctl->membase + PIO_POW_MOD_SEL_REG);
  raw_spin_unlock_irqrestore(&pctl->lock, flags);
  return 0;
 default:
  return -EINVAL;
 }
}
