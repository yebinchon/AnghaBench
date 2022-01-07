
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_8__ {int number; } ;
struct TYPE_6__ {int * dev; } ;
struct TYPE_7__ {TYPE_1__ pinmux; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 TYPE_2__ aspeed_g5_pinctrl_data ;
 int aspeed_g5_pinctrl_desc ;
 TYPE_3__* aspeed_g5_pins ;
 int aspeed_pinctrl_probe (struct platform_device*,int *,TYPE_2__*) ;

__attribute__((used)) static int aspeed_g5_pinctrl_probe(struct platform_device *pdev)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(aspeed_g5_pins); i++)
  aspeed_g5_pins[i].number = i;

 aspeed_g5_pinctrl_data.pinmux.dev = &pdev->dev;

 return aspeed_pinctrl_probe(pdev, &aspeed_g5_pinctrl_desc,
   &aspeed_g5_pinctrl_data);
}
