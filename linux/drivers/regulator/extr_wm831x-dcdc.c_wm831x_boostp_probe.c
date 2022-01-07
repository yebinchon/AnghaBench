
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct wm831x_pdata {int ** dcdc; } ;
struct TYPE_9__ {int id; int enable_mask; int enable_reg; int owner; int * ops; int type; int name; } ;
struct wm831x_dcdc {int name; int regulator; TYPE_3__ desc; int base; struct wm831x* wm831x; } ;
struct wm831x {TYPE_1__* dev; int regmap; } ;
struct resource {int start; } ;
struct regulator_config {int regmap; struct wm831x_dcdc* driver_data; int * init_data; int dev; } ;
struct TYPE_8__ {int parent; } ;
struct platform_device {int id; TYPE_1__ dev; } ;


 int ARRAY_SIZE (int **) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_REG ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int WM831X_DCDC_ENABLE ;
 int dev_dbg (TYPE_1__*,char*,int) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct wm831x* dev_get_drvdata (int ) ;
 struct wm831x_pdata* dev_get_platdata (TYPE_1__*) ;
 struct wm831x_dcdc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regulator_register (TYPE_1__*,TYPE_3__*,struct regulator_config*) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int,int ,struct wm831x_dcdc*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct wm831x_dcdc*) ;
 int snprintf (int ,int,char*,int) ;
 int wm831x_boostp_ops ;
 int wm831x_dcdc_uv_irq ;
 int wm831x_irq (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_boostp_probe(struct platform_device *pdev)
{
 struct wm831x *wm831x = dev_get_drvdata(pdev->dev.parent);
 struct wm831x_pdata *pdata = dev_get_platdata(wm831x->dev);
 struct regulator_config config = { };
 int id = pdev->id % ARRAY_SIZE(pdata->dcdc);
 struct wm831x_dcdc *dcdc;
 struct resource *res;
 int ret, irq;

 dev_dbg(&pdev->dev, "Probing DCDC%d\n", id + 1);

 if (pdata == ((void*)0) || pdata->dcdc[id] == ((void*)0))
  return -ENODEV;

 dcdc = devm_kzalloc(&pdev->dev, sizeof(struct wm831x_dcdc), GFP_KERNEL);
 if (!dcdc)
  return -ENOMEM;

 dcdc->wm831x = wm831x;

 res = platform_get_resource(pdev, IORESOURCE_REG, 0);
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "No REG resource\n");
  return -EINVAL;
 }
 dcdc->base = res->start;

 snprintf(dcdc->name, sizeof(dcdc->name), "DCDC%d", id + 1);
 dcdc->desc.name = dcdc->name;
 dcdc->desc.id = id;
 dcdc->desc.type = REGULATOR_VOLTAGE;
 dcdc->desc.ops = &wm831x_boostp_ops;
 dcdc->desc.owner = THIS_MODULE;
 dcdc->desc.enable_reg = WM831X_DCDC_ENABLE;
 dcdc->desc.enable_mask = 1 << id;

 config.dev = pdev->dev.parent;
 if (pdata)
  config.init_data = pdata->dcdc[id];
 config.driver_data = dcdc;
 config.regmap = wm831x->regmap;

 dcdc->regulator = devm_regulator_register(&pdev->dev, &dcdc->desc,
        &config);
 if (IS_ERR(dcdc->regulator)) {
  ret = PTR_ERR(dcdc->regulator);
  dev_err(wm831x->dev, "Failed to register DCDC%d: %d\n",
   id + 1, ret);
  return ret;
 }

 irq = wm831x_irq(wm831x, platform_get_irq_byname(pdev, "UV"));
 ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
     wm831x_dcdc_uv_irq,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     dcdc->name,
     dcdc);
 if (ret != 0) {
  dev_err(&pdev->dev, "Failed to request UV IRQ %d: %d\n",
   irq, ret);
  return ret;
 }

 platform_set_drvdata(pdev, dcdc);

 return 0;
}
