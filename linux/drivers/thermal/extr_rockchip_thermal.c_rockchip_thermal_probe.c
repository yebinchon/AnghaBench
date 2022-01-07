
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct rockchip_tsadc_chip {int chn_num; int (* control ) (void*,int) ;int * chn_id; int (* initialize ) (int ,void*,int ) ;} ;
struct rockchip_thermal_data {void* clk; void* pclk; int * sensors; struct rockchip_tsadc_chip const* chip; void* regs; int tshut_polarity; int grf; void* reset; struct platform_device* pdev; } ;
struct resource {int dummy; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 void* devm_clk_get (TYPE_1__*,char*) ;
 void* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct rockchip_thermal_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int *,int ,char*,struct rockchip_thermal_data*) ;
 void* devm_reset_control_get (TYPE_1__*,char*) ;
 struct of_device_id* of_match_node (int ,struct device_node*) ;
 int of_rockchip_thermal_match ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rockchip_thermal_data*) ;
 int rockchip_configure_from_dt (TYPE_1__*,struct device_node*,struct rockchip_thermal_data*) ;
 int rockchip_thermal_alarm_irq_thread ;
 int rockchip_thermal_register_sensor (struct platform_device*,struct rockchip_thermal_data*,int *,int ) ;
 int rockchip_thermal_reset_controller (void*) ;
 int rockchip_thermal_toggle_sensor (int *,int) ;
 int stub1 (int ,void*,int ) ;
 int stub2 (void*,int) ;

__attribute__((used)) static int rockchip_thermal_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct rockchip_thermal_data *thermal;
 const struct of_device_id *match;
 struct resource *res;
 int irq;
 int i;
 int error;

 match = of_match_node(of_rockchip_thermal_match, np);
 if (!match)
  return -ENXIO;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(&pdev->dev, "no irq resource?\n");
  return -EINVAL;
 }

 thermal = devm_kzalloc(&pdev->dev, sizeof(struct rockchip_thermal_data),
          GFP_KERNEL);
 if (!thermal)
  return -ENOMEM;

 thermal->pdev = pdev;

 thermal->chip = (const struct rockchip_tsadc_chip *)match->data;
 if (!thermal->chip)
  return -EINVAL;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 thermal->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(thermal->regs))
  return PTR_ERR(thermal->regs);

 thermal->reset = devm_reset_control_get(&pdev->dev, "tsadc-apb");
 if (IS_ERR(thermal->reset)) {
  error = PTR_ERR(thermal->reset);
  dev_err(&pdev->dev, "failed to get tsadc reset: %d\n", error);
  return error;
 }

 thermal->clk = devm_clk_get(&pdev->dev, "tsadc");
 if (IS_ERR(thermal->clk)) {
  error = PTR_ERR(thermal->clk);
  dev_err(&pdev->dev, "failed to get tsadc clock: %d\n", error);
  return error;
 }

 thermal->pclk = devm_clk_get(&pdev->dev, "apb_pclk");
 if (IS_ERR(thermal->pclk)) {
  error = PTR_ERR(thermal->pclk);
  dev_err(&pdev->dev, "failed to get apb_pclk clock: %d\n",
   error);
  return error;
 }

 error = clk_prepare_enable(thermal->clk);
 if (error) {
  dev_err(&pdev->dev, "failed to enable converter clock: %d\n",
   error);
  return error;
 }

 error = clk_prepare_enable(thermal->pclk);
 if (error) {
  dev_err(&pdev->dev, "failed to enable pclk: %d\n", error);
  goto err_disable_clk;
 }

 rockchip_thermal_reset_controller(thermal->reset);

 error = rockchip_configure_from_dt(&pdev->dev, np, thermal);
 if (error) {
  dev_err(&pdev->dev, "failed to parse device tree data: %d\n",
   error);
  goto err_disable_pclk;
 }

 thermal->chip->initialize(thermal->grf, thermal->regs,
      thermal->tshut_polarity);

 for (i = 0; i < thermal->chip->chn_num; i++) {
  error = rockchip_thermal_register_sensor(pdev, thermal,
      &thermal->sensors[i],
      thermal->chip->chn_id[i]);
  if (error) {
   dev_err(&pdev->dev,
    "failed to register sensor[%d] : error = %d\n",
    i, error);
   goto err_disable_pclk;
  }
 }

 error = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
       &rockchip_thermal_alarm_irq_thread,
       IRQF_ONESHOT,
       "rockchip_thermal", thermal);
 if (error) {
  dev_err(&pdev->dev,
   "failed to request tsadc irq: %d\n", error);
  goto err_disable_pclk;
 }

 thermal->chip->control(thermal->regs, 1);

 for (i = 0; i < thermal->chip->chn_num; i++)
  rockchip_thermal_toggle_sensor(&thermal->sensors[i], 1);

 platform_set_drvdata(pdev, thermal);

 return 0;

err_disable_pclk:
 clk_disable_unprepare(thermal->pclk);
err_disable_clk:
 clk_disable_unprepare(thermal->clk);

 return error;
}
