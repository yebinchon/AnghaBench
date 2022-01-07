
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mlxreg_hotplug_priv_data {scalar_t__ irq; int after_probe; int hwmon; int groups; int dwork_irq; int lock; struct platform_device* pdev; int dev; int regmap; } ;
struct mlxreg_core_hotplug_platform_data {scalar_t__ irq; int regmap; int deferred_nr; } ;
struct i2c_adapter {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_SHARED ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct mlxreg_core_hotplug_platform_data* dev_get_platdata (TYPE_1__*) ;
 int dev_set_drvdata (TYPE_1__*,struct mlxreg_hotplug_priv_data*) ;
 int devm_hwmon_device_register_with_groups (TYPE_1__*,char*,struct mlxreg_hotplug_priv_data*,int ) ;
 struct mlxreg_hotplug_priv_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_irq (TYPE_1__*,int,int ,int,char*,struct mlxreg_hotplug_priv_data*) ;
 int disable_irq (int) ;
 struct i2c_adapter* i2c_get_adapter (int ) ;
 int i2c_put_adapter (struct i2c_adapter*) ;
 int mlxreg_hotplug_attr_init (struct mlxreg_hotplug_priv_data*) ;
 int mlxreg_hotplug_irq_handler ;
 int mlxreg_hotplug_set_irq (struct mlxreg_hotplug_priv_data*) ;
 int mlxreg_hotplug_work_handler ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mlxreg_hotplug_probe(struct platform_device *pdev)
{
 struct mlxreg_core_hotplug_platform_data *pdata;
 struct mlxreg_hotplug_priv_data *priv;
 struct i2c_adapter *deferred_adap;
 int err;

 pdata = dev_get_platdata(&pdev->dev);
 if (!pdata) {
  dev_err(&pdev->dev, "Failed to get platform data.\n");
  return -EINVAL;
 }


 deferred_adap = i2c_get_adapter(pdata->deferred_nr);
 if (!deferred_adap)
  return -EPROBE_DEFER;
 i2c_put_adapter(deferred_adap);

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 if (pdata->irq) {
  priv->irq = pdata->irq;
 } else {
  priv->irq = platform_get_irq(pdev, 0);
  if (priv->irq < 0)
   return priv->irq;
 }

 priv->regmap = pdata->regmap;
 priv->dev = pdev->dev.parent;
 priv->pdev = pdev;

 err = devm_request_irq(&pdev->dev, priv->irq,
          mlxreg_hotplug_irq_handler, IRQF_TRIGGER_FALLING
          | IRQF_SHARED, "mlxreg-hotplug", priv);
 if (err) {
  dev_err(&pdev->dev, "Failed to request irq: %d\n", err);
  return err;
 }

 disable_irq(priv->irq);
 spin_lock_init(&priv->lock);
 INIT_DELAYED_WORK(&priv->dwork_irq, mlxreg_hotplug_work_handler);
 dev_set_drvdata(&pdev->dev, priv);

 err = mlxreg_hotplug_attr_init(priv);
 if (err) {
  dev_err(&pdev->dev, "Failed to allocate attributes: %d\n",
   err);
  return err;
 }

 priv->hwmon = devm_hwmon_device_register_with_groups(&pdev->dev,
     "mlxreg_hotplug", priv, priv->groups);
 if (IS_ERR(priv->hwmon)) {
  dev_err(&pdev->dev, "Failed to register hwmon device %ld\n",
   PTR_ERR(priv->hwmon));
  return PTR_ERR(priv->hwmon);
 }


 mlxreg_hotplug_set_irq(priv);
 priv->after_probe = 1;

 return 0;
}
