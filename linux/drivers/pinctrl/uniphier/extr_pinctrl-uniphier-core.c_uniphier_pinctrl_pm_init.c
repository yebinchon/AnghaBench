
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_pinctrl_socdata {int npins; int caps; TYPE_1__* pins; } ;
struct uniphier_pinctrl_priv {int reg_regions; struct uniphier_pinctrl_socdata* socdata; } ;
struct device {int dummy; } ;
typedef enum uniphier_pin_pull_dir { ____Placeholder_uniphier_pin_pull_dir } uniphier_pin_pull_dir ;
typedef enum uniphier_pin_drv_type { ____Placeholder_uniphier_pin_drv_type } uniphier_pin_drv_type ;
struct TYPE_2__ {void* drv_data; } ;


 int INIT_LIST_HEAD (int *) ;
 int UNIPHIER_PINCTRL_CAPS_PERPIN_IECTRL ;
 int UNIPHIER_PINCTRL_DRV2CTRL_BASE ;
 int UNIPHIER_PINCTRL_DRV3CTRL_BASE ;
 int UNIPHIER_PINCTRL_DRVCTRL_BASE ;
 int UNIPHIER_PINCTRL_IECTRL_BASE ;
 int UNIPHIER_PINCTRL_PINMUX_BASE ;
 int UNIPHIER_PINCTRL_PUPDCTRL_BASE ;



 unsigned int UNIPHIER_PIN_IECTRL_NONE ;
 int UNIPHIER_PIN_PULL_DOWN ;
 int UNIPHIER_PIN_PULL_UP ;
 unsigned int max (unsigned int,unsigned int) ;
 int uniphier_pin_get_drv_type (void*) ;
 unsigned int uniphier_pin_get_drvctrl (void*) ;
 unsigned int uniphier_pin_get_iectrl (void*) ;
 int uniphier_pin_get_pull_dir (void*) ;
 unsigned int uniphier_pin_get_pupdctrl (void*) ;
 int uniphier_pinctrl_add_reg_region (struct device*,struct uniphier_pinctrl_priv*,int ,unsigned int,int) ;

__attribute__((used)) static int uniphier_pinctrl_pm_init(struct device *dev,
        struct uniphier_pinctrl_priv *priv)
{
 return 0;
}
