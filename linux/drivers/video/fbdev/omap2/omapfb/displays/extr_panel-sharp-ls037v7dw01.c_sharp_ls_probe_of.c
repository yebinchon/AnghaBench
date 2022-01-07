
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct panel_drv_data {struct omap_dss_device* in; int ud_gpio; int lr_gpio; int mo_gpio; int resb_gpio; int ini_gpio; struct omap_dss_device* vcc; } ;
struct omap_dss_device {int dummy; } ;
struct device_node {int dummy; } ;


 scalar_t__ IS_ERR (struct omap_dss_device*) ;
 int PTR_ERR (struct omap_dss_device*) ;
 int dev_err (TYPE_1__*,char*) ;
 struct omap_dss_device* devm_regulator_get (TYPE_1__*,char*) ;
 struct omap_dss_device* omapdss_of_find_source_for_first_ep (struct device_node*) ;
 struct panel_drv_data* platform_get_drvdata (struct platform_device*) ;
 int sharp_ls_get_gpio_of (TYPE_1__*,int,int,char*,int *) ;

__attribute__((used)) static int sharp_ls_probe_of(struct platform_device *pdev)
{
 struct panel_drv_data *ddata = platform_get_drvdata(pdev);
 struct device_node *node = pdev->dev.of_node;
 struct omap_dss_device *in;
 int r;

 ddata->vcc = devm_regulator_get(&pdev->dev, "envdd");
 if (IS_ERR(ddata->vcc)) {
  dev_err(&pdev->dev, "failed to get regulator\n");
  return PTR_ERR(ddata->vcc);
 }


 r = sharp_ls_get_gpio_of(&pdev->dev, 0, 0, "enable", &ddata->ini_gpio);
 if (r)
  return r;


 r = sharp_ls_get_gpio_of(&pdev->dev, 0, 0, "reset", &ddata->resb_gpio);
 if (r)
  return r;


 r = sharp_ls_get_gpio_of(&pdev->dev, 0, 0, "mode", &ddata->mo_gpio);
 if (r)
  return r;


 r = sharp_ls_get_gpio_of(&pdev->dev, 1, 1, "mode", &ddata->lr_gpio);
 if (r)
  return r;


 r = sharp_ls_get_gpio_of(&pdev->dev, 2, 1, "mode", &ddata->ud_gpio);
 if (r)
  return r;

 in = omapdss_of_find_source_for_first_ep(node);
 if (IS_ERR(in)) {
  dev_err(&pdev->dev, "failed to find video source\n");
  return PTR_ERR(in);
 }

 ddata->in = in;

 return 0;
}
