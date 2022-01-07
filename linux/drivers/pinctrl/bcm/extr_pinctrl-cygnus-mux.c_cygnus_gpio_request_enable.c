
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dev; TYPE_2__* desc; } ;
struct cygnus_pinctrl {int lock; scalar_t__ base1; } ;
struct cygnus_gpio_mux {int shift; scalar_t__ offset; int is_supported; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {struct cygnus_gpio_mux* drv_data; } ;


 int ENOTSUPP ;
 int dev_dbg (int ,char*,unsigned int,scalar_t__,int) ;
 struct cygnus_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int cygnus_gpio_request_enable(struct pinctrl_dev *pctrl_dev,
          struct pinctrl_gpio_range *range,
          unsigned pin)
{
 struct cygnus_pinctrl *pinctrl = pinctrl_dev_get_drvdata(pctrl_dev);
 const struct cygnus_gpio_mux *mux = pctrl_dev->desc->pins[pin].drv_data;
 u32 val;
 unsigned long flags;


 if (!mux->is_supported)
  return -ENOTSUPP;

 spin_lock_irqsave(&pinctrl->lock, flags);

 val = readl(pinctrl->base1 + mux->offset);
 val |= 0x3 << mux->shift;
 writel(val, pinctrl->base1 + mux->offset);

 spin_unlock_irqrestore(&pinctrl->lock, flags);

 dev_dbg(pctrl_dev->dev,
  "gpio request enable pin=%u offset=0x%x shift=%u\n",
  pin, mux->offset, mux->shift);

 return 0;
}
