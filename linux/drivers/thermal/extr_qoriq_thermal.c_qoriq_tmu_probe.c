
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qoriq_tmu_data {int clk; int regs; int little_endian; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_clk_get_optional (TYPE_1__*,int *) ;
 struct qoriq_tmu_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct qoriq_tmu_data*) ;
 int qoriq_tmu_calibration (struct platform_device*) ;
 int qoriq_tmu_init_device (struct qoriq_tmu_data*) ;
 int qoriq_tmu_register_tmu_zone (struct platform_device*) ;

__attribute__((used)) static int qoriq_tmu_probe(struct platform_device *pdev)
{
 int ret;
 struct qoriq_tmu_data *data;
 struct device_node *np = pdev->dev.of_node;

 data = devm_kzalloc(&pdev->dev, sizeof(struct qoriq_tmu_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 platform_set_drvdata(pdev, data);

 data->little_endian = of_property_read_bool(np, "little-endian");

 data->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(data->regs)) {
  dev_err(&pdev->dev, "Failed to get memory region\n");
  return PTR_ERR(data->regs);
 }

 data->clk = devm_clk_get_optional(&pdev->dev, ((void*)0));
 if (IS_ERR(data->clk))
  return PTR_ERR(data->clk);

 ret = clk_prepare_enable(data->clk);
 if (ret) {
  dev_err(&pdev->dev, "Failed to enable clock\n");
  return ret;
 }

 qoriq_tmu_init_device(data);

 ret = qoriq_tmu_calibration(pdev);
 if (ret < 0)
  goto err;

 ret = qoriq_tmu_register_tmu_zone(pdev);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register sensors\n");
  ret = -ENODEV;
  goto err;
 }

 return 0;

err:
 clk_disable_unprepare(data->clk);
 platform_set_drvdata(pdev, ((void*)0));

 return ret;
}
