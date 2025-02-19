
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {scalar_t__ start; scalar_t__ end; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct dwc3_qcom {scalar_t__ mode; int is_suspended; int num_clocks; int resets; int * clks; TYPE_1__* dwc3; int qscratch_base; TYPE_2__* acpi_pdata; struct device* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {scalar_t__ qscratch_base_size; scalar_t__ qscratch_base_offset; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ USB_DR_MODE_PERIPHERAL ;
 TYPE_2__* acpi_device_get_match_data (struct device*) ;
 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int dev_err (struct device*,char*,...) ;
 int device_init_wakeup (struct device*,int) ;
 int device_property_read_bool (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct dwc3_qcom* devm_kzalloc (struct device*,int,int ) ;
 int devm_reset_control_array_get_optional_exclusive (struct device*) ;
 int dwc3_qcom_acpi_register_core (struct platform_device*) ;
 int dwc3_qcom_clk_init (struct dwc3_qcom*,int ) ;
 int dwc3_qcom_of_register_core (struct platform_device*) ;
 int dwc3_qcom_register_extcon (struct dwc3_qcom*) ;
 int dwc3_qcom_select_utmi_clk (struct dwc3_qcom*) ;
 int dwc3_qcom_setup_irq (struct platform_device*) ;
 int dwc3_qcom_vbus_overrride_enable (struct dwc3_qcom*,int) ;
 scalar_t__ has_acpi_companion (struct device*) ;
 struct resource* kmemdup (struct resource*,int,int ) ;
 int of_clk_get_parent_count (struct device_node*) ;
 int of_platform_depopulate (struct device*) ;
 int platform_device_put (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct dwc3_qcom*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_forbid (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 scalar_t__ usb_get_dr_mode (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dwc3_qcom_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct device *dev = &pdev->dev;
 struct dwc3_qcom *qcom;
 struct resource *res, *parent_res = ((void*)0);
 int ret, i;
 bool ignore_pipe_clk;

 qcom = devm_kzalloc(&pdev->dev, sizeof(*qcom), GFP_KERNEL);
 if (!qcom)
  return -ENOMEM;

 platform_set_drvdata(pdev, qcom);
 qcom->dev = &pdev->dev;

 if (has_acpi_companion(dev)) {
  qcom->acpi_pdata = acpi_device_get_match_data(dev);
  if (!qcom->acpi_pdata) {
   dev_err(&pdev->dev, "no supporting ACPI device data\n");
   return -EINVAL;
  }
 }

 qcom->resets = devm_reset_control_array_get_optional_exclusive(dev);
 if (IS_ERR(qcom->resets)) {
  ret = PTR_ERR(qcom->resets);
  dev_err(&pdev->dev, "failed to get resets, err=%d\n", ret);
  return ret;
 }

 ret = reset_control_assert(qcom->resets);
 if (ret) {
  dev_err(&pdev->dev, "failed to assert resets, err=%d\n", ret);
  return ret;
 }

 usleep_range(10, 1000);

 ret = reset_control_deassert(qcom->resets);
 if (ret) {
  dev_err(&pdev->dev, "failed to deassert resets, err=%d\n", ret);
  goto reset_assert;
 }

 ret = dwc3_qcom_clk_init(qcom, of_clk_get_parent_count(np));
 if (ret) {
  dev_err(dev, "failed to get clocks\n");
  goto reset_assert;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 if (np) {
  parent_res = res;
 } else {
  parent_res = kmemdup(res, sizeof(struct resource), GFP_KERNEL);
  if (!parent_res)
   return -ENOMEM;

  parent_res->start = res->start +
   qcom->acpi_pdata->qscratch_base_offset;
  parent_res->end = parent_res->start +
   qcom->acpi_pdata->qscratch_base_size;
 }

 qcom->qscratch_base = devm_ioremap_resource(dev, parent_res);
 if (IS_ERR(qcom->qscratch_base)) {
  dev_err(dev, "failed to map qscratch, err=%d\n", ret);
  ret = PTR_ERR(qcom->qscratch_base);
  goto clk_disable;
 }

 ret = dwc3_qcom_setup_irq(pdev);
 if (ret) {
  dev_err(dev, "failed to setup IRQs, err=%d\n", ret);
  goto clk_disable;
 }





 ignore_pipe_clk = device_property_read_bool(dev,
    "qcom,select-utmi-as-pipe-clk");
 if (ignore_pipe_clk)
  dwc3_qcom_select_utmi_clk(qcom);

 if (np)
  ret = dwc3_qcom_of_register_core(pdev);
 else
  ret = dwc3_qcom_acpi_register_core(pdev);

 if (ret) {
  dev_err(dev, "failed to register DWC3 Core, err=%d\n", ret);
  goto depopulate;
 }

 qcom->mode = usb_get_dr_mode(&qcom->dwc3->dev);


 if (qcom->mode == USB_DR_MODE_PERIPHERAL)
  dwc3_qcom_vbus_overrride_enable(qcom, 1);


 ret = dwc3_qcom_register_extcon(qcom);
 if (ret)
  goto depopulate;

 device_init_wakeup(&pdev->dev, 1);
 qcom->is_suspended = 0;
 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);
 pm_runtime_forbid(dev);

 return 0;

depopulate:
 if (np)
  of_platform_depopulate(&pdev->dev);
 else
  platform_device_put(pdev);
clk_disable:
 for (i = qcom->num_clocks - 1; i >= 0; i--) {
  clk_disable_unprepare(qcom->clks[i]);
  clk_put(qcom->clks[i]);
 }
reset_assert:
 reset_control_assert(qcom->resets);

 return ret;
}
