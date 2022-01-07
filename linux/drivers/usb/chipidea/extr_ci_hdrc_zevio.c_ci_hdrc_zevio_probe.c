
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; int num_resources; int resource; } ;


 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;
 struct platform_device* ci_hdrc_add_device (int *,int ,int ,int *) ;
 int ci_hdrc_zevio_platdata ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int platform_set_drvdata (struct platform_device*,struct platform_device*) ;

__attribute__((used)) static int ci_hdrc_zevio_probe(struct platform_device *pdev)
{
 struct platform_device *ci_pdev;

 dev_dbg(&pdev->dev, "ci_hdrc_zevio_probe\n");

 ci_pdev = ci_hdrc_add_device(&pdev->dev,
    pdev->resource, pdev->num_resources,
    &ci_hdrc_zevio_platdata);

 if (IS_ERR(ci_pdev)) {
  dev_err(&pdev->dev, "ci_hdrc_add_device failed!\n");
  return PTR_ERR(ci_pdev);
 }

 platform_set_drvdata(pdev, ci_pdev);

 return 0;
}
