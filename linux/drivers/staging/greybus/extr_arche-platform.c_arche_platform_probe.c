
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int notifier_call; } ;
struct arche_platform_drvdata {int platform_state_mutex; TYPE_1__ pm_notifier; int wake_detect_irq; void* wake_detect; int wake_lock; struct device* dev; int num_apbs; void* svc_ref_clk; void* svc_refclk_req; void* svc_sysboot; void* svc_reset; scalar_t__ is_reset_act_hi; } ;


 int ARCHE_PLATFORM_STATE_OFF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int GPIOD_IN ;
 unsigned int GPIOD_OUT_HIGH ;
 unsigned int GPIOD_OUT_LOW ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int WD_STATE_IDLE ;
 int arche_platform_coldboot_seq (struct arche_platform_drvdata*) ;
 int arche_platform_pm_notifier ;
 int arche_platform_set_state (struct arche_platform_drvdata*,int ) ;
 int arche_platform_set_wake_detect_state (struct arche_platform_drvdata*,int ) ;
 int arche_platform_wd_irq ;
 int arche_platform_wd_irq_en (struct arche_platform_drvdata*) ;
 int arche_platform_wd_irq_thread ;
 int dev_attr_state ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int dev_name (struct device*) ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_gpiod_get (struct device*,char*,unsigned int) ;
 struct arche_platform_drvdata* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int ,int ,int,int ,struct arche_platform_drvdata*) ;
 int disable_irq (int ) ;
 int gpiod_to_irq (void*) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_get_child_count (struct device_node*) ;
 int of_platform_populate (struct device_node*,int *,int *,struct device*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct arche_platform_drvdata*) ;
 int register_pm_notifier (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int arche_platform_probe(struct platform_device *pdev)
{
 struct arche_platform_drvdata *arche_pdata;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 int ret;
 unsigned int flags;

 arche_pdata = devm_kzalloc(&pdev->dev, sizeof(*arche_pdata),
       GFP_KERNEL);
 if (!arche_pdata)
  return -ENOMEM;


 arche_pdata->is_reset_act_hi = of_property_read_bool(np,
            "svc,reset-active-high");
 if (arche_pdata->is_reset_act_hi)
  flags = GPIOD_OUT_HIGH;
 else
  flags = GPIOD_OUT_LOW;

 arche_pdata->svc_reset = devm_gpiod_get(dev, "svc,reset", flags);
 if (IS_ERR(arche_pdata->svc_reset)) {
  ret = PTR_ERR(arche_pdata->svc_reset);
  dev_err(dev, "failed to request svc-reset GPIO: %d\n", ret);
  return ret;
 }
 arche_platform_set_state(arche_pdata, ARCHE_PLATFORM_STATE_OFF);

 arche_pdata->svc_sysboot = devm_gpiod_get(dev, "svc,sysboot",
        GPIOD_OUT_LOW);
 if (IS_ERR(arche_pdata->svc_sysboot)) {
  ret = PTR_ERR(arche_pdata->svc_sysboot);
  dev_err(dev, "failed to request sysboot0 GPIO: %d\n", ret);
  return ret;
 }


 arche_pdata->svc_refclk_req = devm_gpiod_get(dev, "svc,refclk-req",
           GPIOD_IN);
 if (IS_ERR(arche_pdata->svc_refclk_req)) {
  ret = PTR_ERR(arche_pdata->svc_refclk_req);
  dev_err(dev, "failed to request svc-clk-req GPIO: %d\n", ret);
  return ret;
 }


 arche_pdata->svc_ref_clk = devm_clk_get(dev, "svc_ref_clk");
 if (IS_ERR(arche_pdata->svc_ref_clk)) {
  ret = PTR_ERR(arche_pdata->svc_ref_clk);
  dev_err(dev, "failed to get svc_ref_clk: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, arche_pdata);

 arche_pdata->num_apbs = of_get_child_count(np);
 dev_dbg(dev, "Number of APB's available - %d\n", arche_pdata->num_apbs);

 arche_pdata->wake_detect = devm_gpiod_get(dev, "svc,wake-detect",
        GPIOD_IN);
 if (IS_ERR(arche_pdata->wake_detect)) {
  ret = PTR_ERR(arche_pdata->wake_detect);
  dev_err(dev, "Failed requesting wake_detect GPIO: %d\n", ret);
  return ret;
 }

 arche_platform_set_wake_detect_state(arche_pdata, WD_STATE_IDLE);

 arche_pdata->dev = &pdev->dev;

 spin_lock_init(&arche_pdata->wake_lock);
 mutex_init(&arche_pdata->platform_state_mutex);
 arche_pdata->wake_detect_irq =
  gpiod_to_irq(arche_pdata->wake_detect);

 ret = devm_request_threaded_irq(dev, arche_pdata->wake_detect_irq,
     arche_platform_wd_irq,
     arche_platform_wd_irq_thread,
     IRQF_TRIGGER_FALLING |
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     dev_name(dev), arche_pdata);
 if (ret) {
  dev_err(dev, "failed to request wake detect IRQ %d\n", ret);
  return ret;
 }
 disable_irq(arche_pdata->wake_detect_irq);

 ret = device_create_file(dev, &dev_attr_state);
 if (ret) {
  dev_err(dev, "failed to create state file in sysfs\n");
  return ret;
 }

 ret = of_platform_populate(np, ((void*)0), ((void*)0), dev);
 if (ret) {
  dev_err(dev, "failed to populate child nodes %d\n", ret);
  goto err_device_remove;
 }

 arche_pdata->pm_notifier.notifier_call = arche_platform_pm_notifier;
 ret = register_pm_notifier(&arche_pdata->pm_notifier);

 if (ret) {
  dev_err(dev, "failed to register pm notifier %d\n", ret);
  goto err_device_remove;
 }


 if (!of_property_read_bool(pdev->dev.of_node, "arche,init-off")) {
  mutex_lock(&arche_pdata->platform_state_mutex);
  ret = arche_platform_coldboot_seq(arche_pdata);
  if (ret) {
   dev_err(dev, "Failed to cold boot svc %d\n", ret);
   goto err_coldboot;
  }
  arche_platform_wd_irq_en(arche_pdata);
  mutex_unlock(&arche_pdata->platform_state_mutex);
 }

 dev_info(dev, "Device registered successfully\n");
 return 0;

err_coldboot:
 mutex_unlock(&arche_pdata->platform_state_mutex);
err_device_remove:
 device_remove_file(&pdev->dev, &dev_attr_state);
 return ret;
}
