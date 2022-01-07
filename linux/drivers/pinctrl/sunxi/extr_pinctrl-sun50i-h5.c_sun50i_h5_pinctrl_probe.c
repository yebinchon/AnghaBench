
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int dev_warn (TYPE_1__*,char*) ;
 int of_irq_count (int ) ;
 int sun50i_h5_pinctrl_data ;
 int sun50i_h5_pinctrl_data_broken ;
 int sunxi_pinctrl_init (struct platform_device*,int *) ;

__attribute__((used)) static int sun50i_h5_pinctrl_probe(struct platform_device *pdev)
{
 switch (of_irq_count(pdev->dev.of_node)) {
 case 2:
  dev_warn(&pdev->dev,
    "Your device tree's pinctrl node is broken, which has no IRQ of PG bank routed.\n");
  dev_warn(&pdev->dev,
    "Please update the device tree, otherwise PG bank IRQ won't work.\n");
  return sunxi_pinctrl_init(pdev,
       &sun50i_h5_pinctrl_data_broken);
 case 3:
  return sunxi_pinctrl_init(pdev,
       &sun50i_h5_pinctrl_data);
 default:
  return -EINVAL;
 }
}
