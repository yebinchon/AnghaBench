
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int dev_err (TYPE_1__*,char*) ;
 scalar_t__ has_acpi_companion (TYPE_1__*) ;
 int msm_pinctrl_probe (struct platform_device*,int *) ;
 int sdm845_acpi_pinctrl ;
 int sdm845_pinctrl ;

__attribute__((used)) static int sdm845_pinctrl_probe(struct platform_device *pdev)
{
 int ret;

 if (pdev->dev.of_node) {
  ret = msm_pinctrl_probe(pdev, &sdm845_pinctrl);
 } else if (has_acpi_companion(&pdev->dev)) {
  ret = msm_pinctrl_probe(pdev, &sdm845_acpi_pinctrl);
 } else {
  dev_err(&pdev->dev, "DT and ACPI disabled\n");
  return -EINVAL;
 }

 return ret;
}
