
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_dev {TYPE_2__* desc; } ;
struct ns2_pinctrl {int lock; scalar_t__ pinconf_base; } ;
struct TYPE_6__ {int pull_shift; scalar_t__ offset; } ;
struct ns2_pin {TYPE_3__ pin_conf; } ;
struct TYPE_5__ {TYPE_1__* pins; } ;
struct TYPE_4__ {struct ns2_pin* drv_data; } ;


 int NS2_PIN_PULL_DOWN ;
 int NS2_PIN_PULL_MASK ;
 int NS2_PIN_PULL_UP ;
 struct ns2_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ns2_pin_get_pull(struct pinctrl_dev *pctrldev,
        unsigned int pin, bool *pull_up,
        bool *pull_down)
{
 struct ns2_pinctrl *pinctrl = pinctrl_dev_get_drvdata(pctrldev);
 struct ns2_pin *pin_data = pctrldev->desc->pins[pin].drv_data;
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&pinctrl->lock, flags);
 val = readl(pinctrl->pinconf_base + pin_data->pin_conf.offset);
 val = (val >> pin_data->pin_conf.pull_shift) & NS2_PIN_PULL_MASK;
 *pull_up = 0;
 *pull_down = 0;

 if (val == NS2_PIN_PULL_UP)
  *pull_up = 1;

 if (val == NS2_PIN_PULL_DOWN)
  *pull_down = 1;
 spin_unlock_irqrestore(&pinctrl->lock, flags);
}
