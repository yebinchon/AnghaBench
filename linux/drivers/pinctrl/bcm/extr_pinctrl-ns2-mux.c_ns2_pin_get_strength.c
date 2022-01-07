
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pinctrl_dev {int dev; TYPE_2__* desc; } ;
struct ns2_pinctrl {int lock; scalar_t__ pinconf_base; } ;
struct TYPE_6__ {int drive_shift; scalar_t__ offset; } ;
struct ns2_pin {TYPE_3__ pin_conf; } ;
struct TYPE_5__ {TYPE_1__* pins; } ;
struct TYPE_4__ {struct ns2_pin* drv_data; } ;


 int NS2_PIN_DRIVE_STRENGTH_MASK ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 struct ns2_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ns2_pin_get_strength(struct pinctrl_dev *pctrldev, unsigned int pin,
     u16 *strength)
{
 struct ns2_pinctrl *pinctrl = pinctrl_dev_get_drvdata(pctrldev);
 struct ns2_pin *pin_data = pctrldev->desc->pins[pin].drv_data;
 u32 val;
 unsigned long flags;

 spin_lock_irqsave(&pinctrl->lock, flags);
 val = readl(pinctrl->pinconf_base + pin_data->pin_conf.offset);
 *strength = (val >> pin_data->pin_conf.drive_shift) &
     NS2_PIN_DRIVE_STRENGTH_MASK;
 *strength = (*strength + 1) * 2;
 spin_unlock_irqrestore(&pinctrl->lock, flags);

 dev_dbg(pctrldev->dev, "pin:%u get drive strength:%d mA\n",
  pin, *strength);
 return 0;
}
