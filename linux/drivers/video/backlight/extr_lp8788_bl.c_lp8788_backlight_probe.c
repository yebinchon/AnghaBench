
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct lp8788_bl {int bl_dev; int pdata; struct lp8788* lp; } ;
struct lp8788 {int dev; TYPE_1__* pdata; } ;
struct TYPE_3__ {int bl_pdata; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int backlight_update_status (int ) ;
 int dev_err (int ,char*,int) ;
 struct lp8788* dev_get_drvdata (int ) ;
 struct lp8788_bl* devm_kzalloc (int ,int,int ) ;
 int lp8788_attr_group ;
 int lp8788_backlight_configure (struct lp8788_bl*) ;
 int lp8788_backlight_register (struct lp8788_bl*) ;
 int lp8788_backlight_unregister (struct lp8788_bl*) ;
 int platform_set_drvdata (struct platform_device*,struct lp8788_bl*) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int lp8788_backlight_probe(struct platform_device *pdev)
{
 struct lp8788 *lp = dev_get_drvdata(pdev->dev.parent);
 struct lp8788_bl *bl;
 int ret;

 bl = devm_kzalloc(lp->dev, sizeof(struct lp8788_bl), GFP_KERNEL);
 if (!bl)
  return -ENOMEM;

 bl->lp = lp;
 if (lp->pdata)
  bl->pdata = lp->pdata->bl_pdata;

 platform_set_drvdata(pdev, bl);

 ret = lp8788_backlight_configure(bl);
 if (ret) {
  dev_err(lp->dev, "backlight config err: %d\n", ret);
  goto err_dev;
 }

 ret = lp8788_backlight_register(bl);
 if (ret) {
  dev_err(lp->dev, "register backlight err: %d\n", ret);
  goto err_dev;
 }

 ret = sysfs_create_group(&pdev->dev.kobj, &lp8788_attr_group);
 if (ret) {
  dev_err(lp->dev, "register sysfs err: %d\n", ret);
  goto err_sysfs;
 }

 backlight_update_status(bl->bl_dev);

 return 0;

err_sysfs:
 lp8788_backlight_unregister(bl);
err_dev:
 return ret;
}
