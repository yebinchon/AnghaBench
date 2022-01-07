
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {int number; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int aspeed_g4_pinctrl_data ;
 int aspeed_g4_pinctrl_desc ;
 TYPE_1__* aspeed_g4_pins ;
 int aspeed_pinctrl_probe (struct platform_device*,int *,int *) ;

__attribute__((used)) static int aspeed_g4_pinctrl_probe(struct platform_device *pdev)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(aspeed_g4_pins); i++)
  aspeed_g4_pins[i].number = i;

 return aspeed_pinctrl_probe(pdev, &aspeed_g4_pinctrl_desc,
   &aspeed_g4_pinctrl_data);
}
