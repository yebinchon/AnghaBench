
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_pinctrl {int dev; } ;
struct rockchip_pin_bank {TYPE_1__* iomux; struct rockchip_pinctrl* drvdata; } ;
struct TYPE_2__ {int type; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int IOMUX_GPIO_ONLY ;
 int IOMUX_UNROUTED ;
 int RK_FUNC_GPIO ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int rockchip_verify_mux(struct rockchip_pin_bank *bank,
          int pin, int mux)
{
 struct rockchip_pinctrl *info = bank->drvdata;
 int iomux_num = (pin / 8);

 if (iomux_num > 3)
  return -EINVAL;

 if (bank->iomux[iomux_num].type & IOMUX_UNROUTED) {
  dev_err(info->dev, "pin %d is unrouted\n", pin);
  return -EINVAL;
 }

 if (bank->iomux[iomux_num].type & IOMUX_GPIO_ONLY) {
  if (mux != RK_FUNC_GPIO) {
   dev_err(info->dev,
    "pin %d only supports a gpio mux\n", pin);
   return -ENOTSUPP;
  }
 }

 return 0;
}
