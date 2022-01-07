
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sunxi_pinctrl {int lock; scalar_t__ membase; TYPE_1__* desc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ pin_base; } ;


 int MUX_PINS_MASK ;
 struct sunxi_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (scalar_t__) ;
 int sunxi_mux_offset (unsigned int) ;
 scalar_t__ sunxi_mux_reg (unsigned int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sunxi_pmx_set(struct pinctrl_dev *pctldev,
     unsigned pin,
     u8 config)
{
 struct sunxi_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 unsigned long flags;
 u32 val, mask;

 raw_spin_lock_irqsave(&pctl->lock, flags);

 pin -= pctl->desc->pin_base;
 val = readl(pctl->membase + sunxi_mux_reg(pin));
 mask = MUX_PINS_MASK << sunxi_mux_offset(pin);
 writel((val & ~mask) | config << sunxi_mux_offset(pin),
  pctl->membase + sunxi_mux_reg(pin));

 raw_spin_unlock_irqrestore(&pctl->lock, flags);
}
