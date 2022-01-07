
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wm831x_pdata {int * epe; } ;
struct TYPE_6__ {int id; int enable_mask; int enable_reg; int owner; int type; int * ops; int name; } ;
struct wm831x_dcdc {int regulator; TYPE_2__ desc; int name; struct wm831x* wm831x; } ;
struct wm831x {int dev; int regmap; } ;
struct regulator_config {int regmap; struct wm831x_dcdc* driver_data; int init_data; int dev; } ;
struct TYPE_5__ {int parent; } ;
struct platform_device {int id; TYPE_1__ dev; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int WM831X_DCDC_ENABLE ;
 int WM831X_EPE_BASE ;
 int dev_dbg (TYPE_1__*,char*,int) ;
 int dev_err (int ,char*,int,int) ;
 struct wm831x* dev_get_drvdata (int ) ;
 struct wm831x_pdata* dev_get_platdata (int ) ;
 struct wm831x_dcdc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regulator_register (TYPE_1__*,TYPE_2__*,struct regulator_config*) ;
 int platform_set_drvdata (struct platform_device*,struct wm831x_dcdc*) ;
 int snprintf (int ,int,char*,int) ;
 int wm831x_epe_ops ;

__attribute__((used)) static int wm831x_epe_probe(struct platform_device *pdev)
{
 struct wm831x *wm831x = dev_get_drvdata(pdev->dev.parent);
 struct wm831x_pdata *pdata = dev_get_platdata(wm831x->dev);
 struct regulator_config config = { };
 int id = pdev->id % ARRAY_SIZE(pdata->epe);
 struct wm831x_dcdc *dcdc;
 int ret;

 dev_dbg(&pdev->dev, "Probing EPE%d\n", id + 1);

 dcdc = devm_kzalloc(&pdev->dev, sizeof(struct wm831x_dcdc), GFP_KERNEL);
 if (!dcdc)
  return -ENOMEM;

 dcdc->wm831x = wm831x;




 snprintf(dcdc->name, sizeof(dcdc->name), "EPE%d", id + 1);
 dcdc->desc.name = dcdc->name;
 dcdc->desc.id = id + WM831X_EPE_BASE;
 dcdc->desc.ops = &wm831x_epe_ops;
 dcdc->desc.type = REGULATOR_VOLTAGE;
 dcdc->desc.owner = THIS_MODULE;
 dcdc->desc.enable_reg = WM831X_DCDC_ENABLE;
 dcdc->desc.enable_mask = 1 << dcdc->desc.id;

 config.dev = pdev->dev.parent;
 if (pdata)
  config.init_data = pdata->epe[id];
 config.driver_data = dcdc;
 config.regmap = wm831x->regmap;

 dcdc->regulator = devm_regulator_register(&pdev->dev, &dcdc->desc,
        &config);
 if (IS_ERR(dcdc->regulator)) {
  ret = PTR_ERR(dcdc->regulator);
  dev_err(wm831x->dev, "Failed to register EPE%d: %d\n",
   id + 1, ret);
  goto err;
 }

 platform_set_drvdata(pdev, dcdc);

 return 0;

err:
 return ret;
}
