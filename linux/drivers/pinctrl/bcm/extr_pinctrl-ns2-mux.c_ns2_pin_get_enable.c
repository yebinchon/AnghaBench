
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pinctrl_dev {int dev; TYPE_3__* desc; } ;
struct ns2_pinctrl {int lock; scalar_t__ pinconf_base; } ;
struct TYPE_4__ {int input_en; scalar_t__ offset; } ;
struct ns2_pin {TYPE_1__ pin_conf; } ;
struct TYPE_6__ {TYPE_2__* pins; } ;
struct TYPE_5__ {struct ns2_pin* drv_data; } ;


 int NS2_PIN_INPUT_EN_MASK ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 struct ns2_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ns2_pin_get_enable(struct pinctrl_dev *pctrldev, unsigned int pin)
{
 struct ns2_pinctrl *pinctrl = pinctrl_dev_get_drvdata(pctrldev);
 struct ns2_pin *pin_data = pctrldev->desc->pins[pin].drv_data;
 unsigned long flags;
 int enable;

 spin_lock_irqsave(&pinctrl->lock, flags);
 enable = readl(pinctrl->pinconf_base + pin_data->pin_conf.offset);
 enable = (enable >> pin_data->pin_conf.input_en) &
   NS2_PIN_INPUT_EN_MASK;
 spin_unlock_irqrestore(&pinctrl->lock, flags);

 if (!enable)
  enable = NS2_PIN_INPUT_EN_MASK;
 else
  enable = 0;

 dev_dbg(pctrldev->dev, "pin:%u get disable:%d\n", pin, enable);
 return enable;
}
