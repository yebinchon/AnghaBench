
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct wm831x_pdata {int ** isink; } ;
struct TYPE_9__ {int id; int n_current_limits; int csel_mask; int csel_reg; int ** curr_table; int owner; int type; int * ops; int name; } ;
struct wm831x_isink {int name; int regulator; TYPE_3__ desc; int reg; struct wm831x* wm831x; } ;
struct wm831x {TYPE_1__* dev; int regmap; } ;
struct resource {int start; } ;
struct regulator_config {int regmap; struct wm831x_isink* driver_data; int * init_data; int dev; } ;
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
 int REGULATOR_CURRENT ;
 int THIS_MODULE ;
 int WM831X_CS1_ISEL_MASK ;
 int dev_dbg (TYPE_1__*,char*,int) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct wm831x* dev_get_drvdata (int ) ;
 struct wm831x_pdata* dev_get_platdata (TYPE_1__*) ;
 struct wm831x_isink* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regulator_register (TYPE_1__*,TYPE_3__*,struct regulator_config*) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int,int ,struct wm831x_isink*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct wm831x_isink*) ;
 int snprintf (int ,int,char*,int) ;
 int wm831x_irq (struct wm831x*,int ) ;
 int wm831x_isink_irq ;
 int wm831x_isink_ops ;
 int ** wm831x_isinkv_values ;

__attribute__((used)) static int wm831x_isink_probe(struct platform_device *pdev)
{
 struct wm831x *wm831x = dev_get_drvdata(pdev->dev.parent);
 struct wm831x_pdata *pdata = dev_get_platdata(wm831x->dev);
 struct wm831x_isink *isink;
 int id = pdev->id % ARRAY_SIZE(pdata->isink);
 struct regulator_config config = { };
 struct resource *res;
 int ret, irq;

 dev_dbg(&pdev->dev, "Probing ISINK%d\n", id + 1);

 if (pdata == ((void*)0) || pdata->isink[id] == ((void*)0))
  return -ENODEV;

 isink = devm_kzalloc(&pdev->dev, sizeof(struct wm831x_isink),
        GFP_KERNEL);
 if (!isink)
  return -ENOMEM;

 isink->wm831x = wm831x;

 res = platform_get_resource(pdev, IORESOURCE_REG, 0);
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "No REG resource\n");
  ret = -EINVAL;
  goto err;
 }
 isink->reg = res->start;




 snprintf(isink->name, sizeof(isink->name), "ISINK%d", id + 1);
 isink->desc.name = isink->name;
 isink->desc.id = id;
 isink->desc.ops = &wm831x_isink_ops;
 isink->desc.type = REGULATOR_CURRENT;
 isink->desc.owner = THIS_MODULE;
 isink->desc.curr_table = wm831x_isinkv_values,
 isink->desc.n_current_limits = ARRAY_SIZE(wm831x_isinkv_values),
 isink->desc.csel_reg = isink->reg,
 isink->desc.csel_mask = WM831X_CS1_ISEL_MASK,

 config.dev = pdev->dev.parent;
 config.init_data = pdata->isink[id];
 config.driver_data = isink;
 config.regmap = wm831x->regmap;

 isink->regulator = devm_regulator_register(&pdev->dev, &isink->desc,
         &config);
 if (IS_ERR(isink->regulator)) {
  ret = PTR_ERR(isink->regulator);
  dev_err(wm831x->dev, "Failed to register ISINK%d: %d\n",
   id + 1, ret);
  goto err;
 }

 irq = wm831x_irq(wm831x, platform_get_irq(pdev, 0));
 ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
     wm831x_isink_irq,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     isink->name,
     isink);
 if (ret != 0) {
  dev_err(&pdev->dev, "Failed to request ISINK IRQ %d: %d\n",
   irq, ret);
  goto err;
 }

 platform_set_drvdata(pdev, isink);

 return 0;

err:
 return ret;
}
