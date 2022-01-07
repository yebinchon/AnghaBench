
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct of_device_id {int data; } ;


 int berlin2cd_pinctrl_match ;
 int berlin_pinctrl_probe (struct platform_device*,int ) ;
 struct of_device_id* of_match_device (int ,int *) ;

__attribute__((used)) static int berlin2cd_pinctrl_probe(struct platform_device *pdev)
{
 const struct of_device_id *match =
  of_match_device(berlin2cd_pinctrl_match, &pdev->dev);

 return berlin_pinctrl_probe(pdev, match->data);
}
