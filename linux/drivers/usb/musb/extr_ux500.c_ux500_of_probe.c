
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct musb_hdrc_platform_data {int mode; } ;
struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 int MUSB_HOST ;
 int MUSB_OTG ;
 int MUSB_PERIPHERAL ;
 int dev_err (int *,char*) ;
 struct musb_hdrc_platform_data* devm_kzalloc (int *,int,int ) ;
 char* of_get_property (struct device_node*,char*,int*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static struct musb_hdrc_platform_data *
ux500_of_probe(struct platform_device *pdev, struct device_node *np)
{
 struct musb_hdrc_platform_data *pdata;
 const char *mode;
 int strlen;

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return ((void*)0);

 mode = of_get_property(np, "dr_mode", &strlen);
 if (!mode) {
  dev_err(&pdev->dev, "No 'dr_mode' property found\n");
  return ((void*)0);
 }

 if (strlen > 0) {
  if (!strcmp(mode, "host"))
   pdata->mode = MUSB_HOST;
  if (!strcmp(mode, "otg"))
   pdata->mode = MUSB_OTG;
  if (!strcmp(mode, "peripheral"))
   pdata->mode = MUSB_PERIPHERAL;
 }

 return pdata;
}
