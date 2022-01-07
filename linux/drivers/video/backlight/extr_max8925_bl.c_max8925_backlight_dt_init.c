
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {struct max8925_backlight_pdata* platform_data; TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct max8925_backlight_pdata {int dual_string; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;


 int CONFIG_OF ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 struct max8925_backlight_pdata* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static void max8925_backlight_dt_init(struct platform_device *pdev)
{
 struct device_node *nproot = pdev->dev.parent->of_node, *np;
 struct max8925_backlight_pdata *pdata;
 u32 val;

 if (!nproot || !IS_ENABLED(CONFIG_OF))
  return;

 pdata = devm_kzalloc(&pdev->dev,
        sizeof(struct max8925_backlight_pdata),
        GFP_KERNEL);
 if (!pdata)
  return;

 np = of_get_child_by_name(nproot, "backlight");
 if (!np) {
  dev_err(&pdev->dev, "failed to find backlight node\n");
  return;
 }

 if (!of_property_read_u32(np, "maxim,max8925-dual-string", &val))
  pdata->dual_string = val;

 of_node_put(np);

 pdev->dev.platform_data = pdata;
}
