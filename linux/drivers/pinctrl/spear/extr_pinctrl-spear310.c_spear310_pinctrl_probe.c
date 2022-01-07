
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_4__ {int modes_supported; int ngpio_pingroups; int gpio_pingroups; void* nfunctions; void* functions; void* ngroups; void* groups; } ;


 void* ARRAY_SIZE (void*) ;
 int PMX_CONFIG_REG ;
 int pmx_init_addr (TYPE_1__*,int ) ;
 int pmx_init_gpio_pingroup_addr (int ,int ,int ) ;
 void* spear310_functions ;
 void* spear310_pingroups ;
 TYPE_1__ spear3xx_machdata ;
 int spear_pinctrl_probe (struct platform_device*,TYPE_1__*) ;

__attribute__((used)) static int spear310_pinctrl_probe(struct platform_device *pdev)
{
 int ret;

 spear3xx_machdata.groups = spear310_pingroups;
 spear3xx_machdata.ngroups = ARRAY_SIZE(spear310_pingroups);
 spear3xx_machdata.functions = spear310_functions;
 spear3xx_machdata.nfunctions = ARRAY_SIZE(spear310_functions);

 pmx_init_addr(&spear3xx_machdata, PMX_CONFIG_REG);
 pmx_init_gpio_pingroup_addr(spear3xx_machdata.gpio_pingroups,
   spear3xx_machdata.ngpio_pingroups, PMX_CONFIG_REG);

 spear3xx_machdata.modes_supported = 0;

 ret = spear_pinctrl_probe(pdev, &spear3xx_machdata);
 if (ret)
  return ret;

 return 0;
}
