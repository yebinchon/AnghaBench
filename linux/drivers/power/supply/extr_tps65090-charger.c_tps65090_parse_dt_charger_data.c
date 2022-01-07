
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tps65090_platform_data {unsigned int enable_low_current_chrg; int irq_base; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 int dev_err (TYPE_1__*,char*) ;
 struct tps65090_platform_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 unsigned int of_property_read_bool (struct device_node*,char*) ;

__attribute__((used)) static struct tps65090_platform_data *
  tps65090_parse_dt_charger_data(struct platform_device *pdev)
{
 struct tps65090_platform_data *pdata;
 struct device_node *np = pdev->dev.of_node;
 unsigned int prop;

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata) {
  dev_err(&pdev->dev, "Memory alloc for tps65090_pdata failed\n");
  return ((void*)0);
 }

 prop = of_property_read_bool(np, "ti,enable-low-current-chrg");
 pdata->enable_low_current_chrg = prop;

 pdata->irq_base = -1;

 return pdata;

}
