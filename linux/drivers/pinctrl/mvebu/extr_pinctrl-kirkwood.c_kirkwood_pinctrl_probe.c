
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;


 int kirkwood_pinctrl_of_match ;
 int mvebu_pinctrl_simple_mmio_probe (struct platform_device*) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;

__attribute__((used)) static int kirkwood_pinctrl_probe(struct platform_device *pdev)
{
 const struct of_device_id *match =
  of_match_device(kirkwood_pinctrl_of_match, &pdev->dev);

 pdev->dev.platform_data = (void *)match->data;

 return mvebu_pinctrl_simple_mmio_probe(pdev);
}
