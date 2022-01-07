
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct pin_desc {int drv_data; } ;
typedef enum uniphier_pin_drv_type { ____Placeholder_uniphier_pin_drv_type } uniphier_pin_drv_type ;


 int EINVAL ;
 unsigned int UNIPHIER_PINCTRL_DRV2CTRL_BASE ;
 unsigned int UNIPHIER_PINCTRL_DRV3CTRL_BASE ;
 unsigned int UNIPHIER_PINCTRL_DRVCTRL_BASE ;






 struct pin_desc* pin_desc_get (struct pinctrl_dev*,unsigned int) ;
 unsigned int* uniphier_conf_drv_strengths_1bit ;
 unsigned int* uniphier_conf_drv_strengths_2bit ;
 unsigned int* uniphier_conf_drv_strengths_3bit ;
 unsigned int* uniphier_conf_drv_strengths_fixed4 ;
 unsigned int* uniphier_conf_drv_strengths_fixed5 ;
 unsigned int* uniphier_conf_drv_strengths_fixed8 ;
 int uniphier_pin_get_drv_type (int ) ;
 unsigned int uniphier_pin_get_drvctrl (int ) ;

__attribute__((used)) static int uniphier_conf_get_drvctrl_data(struct pinctrl_dev *pctldev,
       unsigned int pin, unsigned int *reg,
       unsigned int *shift,
       unsigned int *mask,
       const unsigned int **strengths)
{
 const struct pin_desc *desc = pin_desc_get(pctldev, pin);
 enum uniphier_pin_drv_type type =
    uniphier_pin_get_drv_type(desc->drv_data);
 unsigned int base = 0;
 unsigned int stride = 0;
 unsigned int width = 0;
 unsigned int drvctrl;

 switch (type) {
 case 133:
  *strengths = uniphier_conf_drv_strengths_1bit;
  base = UNIPHIER_PINCTRL_DRVCTRL_BASE;
  stride = 1;
  width = 1;
  break;
 case 132:
  *strengths = uniphier_conf_drv_strengths_2bit;
  base = UNIPHIER_PINCTRL_DRV2CTRL_BASE;
  stride = 2;
  width = 2;
  break;
 case 131:
  *strengths = uniphier_conf_drv_strengths_3bit;
  base = UNIPHIER_PINCTRL_DRV3CTRL_BASE;
  stride = 4;
  width = 3;
  break;
 case 130:
  *strengths = uniphier_conf_drv_strengths_fixed4;
  break;
 case 129:
  *strengths = uniphier_conf_drv_strengths_fixed5;
  break;
 case 128:
  *strengths = uniphier_conf_drv_strengths_fixed8;
  break;
 default:

  return -EINVAL;
 }

 drvctrl = uniphier_pin_get_drvctrl(desc->drv_data);
 drvctrl *= stride;

 *reg = base + drvctrl / 32 * 4;
 *shift = drvctrl % 32;
 *mask = (1U << width) - 1;

 return 0;
}
