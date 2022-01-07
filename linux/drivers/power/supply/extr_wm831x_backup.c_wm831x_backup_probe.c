
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wm831x_pdata {int wm831x_num; } ;
struct TYPE_7__ {int get_property; int num_properties; int properties; int type; int name; } ;
struct wm831x_backup {int backup; TYPE_3__ backup_desc; int name; struct wm831x* wm831x; } ;
struct wm831x {TYPE_1__* dev; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {struct wm831x_pdata* platform_data; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int PTR_ERR_OR_ZERO (int ) ;
 struct wm831x* dev_get_drvdata (int ) ;
 struct wm831x_backup* devm_kzalloc (TYPE_2__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct wm831x_backup*) ;
 int power_supply_register (TYPE_2__*,TYPE_3__*,int *) ;
 int snprintf (int ,int,char*,...) ;
 int wm831x_backup_get_prop ;
 int wm831x_backup_props ;
 int wm831x_config_backup (struct wm831x*) ;

__attribute__((used)) static int wm831x_backup_probe(struct platform_device *pdev)
{
 struct wm831x *wm831x = dev_get_drvdata(pdev->dev.parent);
 struct wm831x_pdata *wm831x_pdata = wm831x->dev->platform_data;
 struct wm831x_backup *devdata;

 devdata = devm_kzalloc(&pdev->dev, sizeof(struct wm831x_backup),
    GFP_KERNEL);
 if (devdata == ((void*)0))
  return -ENOMEM;

 devdata->wm831x = wm831x;
 platform_set_drvdata(pdev, devdata);





 wm831x_config_backup(wm831x);

 if (wm831x_pdata && wm831x_pdata->wm831x_num)
  snprintf(devdata->name, sizeof(devdata->name),
    "wm831x-backup.%d", wm831x_pdata->wm831x_num);
 else
  snprintf(devdata->name, sizeof(devdata->name),
    "wm831x-backup");

 devdata->backup_desc.name = devdata->name;
 devdata->backup_desc.type = POWER_SUPPLY_TYPE_BATTERY;
 devdata->backup_desc.properties = wm831x_backup_props;
 devdata->backup_desc.num_properties = ARRAY_SIZE(wm831x_backup_props);
 devdata->backup_desc.get_property = wm831x_backup_get_prop;
 devdata->backup = power_supply_register(&pdev->dev,
      &devdata->backup_desc, ((void*)0));

 return PTR_ERR_OR_ZERO(devdata->backup);
}
