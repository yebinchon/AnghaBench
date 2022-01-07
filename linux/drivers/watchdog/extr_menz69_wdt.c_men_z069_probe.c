
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_6__ {int * parent; } ;
struct men_z069_drv {TYPE_1__ wdt; struct resource* mem; int * base; } ;
struct mcb_device_id {int dummy; } ;
struct mcb_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct resource*) ;
 int PTR_ERR (struct resource*) ;
 int * devm_ioremap (int *,int ,int ) ;
 struct men_z069_drv* devm_kzalloc (int *,int,int ) ;
 int mcb_release_mem (struct resource*) ;
 struct resource* mcb_request_mem (struct mcb_device*,char*) ;
 int mcb_set_drvdata (struct mcb_device*,struct men_z069_drv*) ;
 TYPE_1__ men_z069_wdt ;
 int nowayout ;
 int resource_size (struct resource*) ;
 int watchdog_init_timeout (TYPE_1__*,int ,int *) ;
 int watchdog_register_device (TYPE_1__*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct men_z069_drv*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;

__attribute__((used)) static int men_z069_probe(struct mcb_device *dev,
     const struct mcb_device_id *id)
{
 struct men_z069_drv *drv;
 struct resource *mem;

 drv = devm_kzalloc(&dev->dev, sizeof(struct men_z069_drv), GFP_KERNEL);
 if (!drv)
  return -ENOMEM;

 mem = mcb_request_mem(dev, "z069-wdt");
 if (IS_ERR(mem))
  return PTR_ERR(mem);

 drv->base = devm_ioremap(&dev->dev, mem->start, resource_size(mem));
 if (drv->base == ((void*)0))
  goto release_mem;

 drv->mem = mem;

 drv->wdt = men_z069_wdt;
 watchdog_init_timeout(&drv->wdt, 0, &dev->dev);
 watchdog_set_nowayout(&drv->wdt, nowayout);
 watchdog_set_drvdata(&drv->wdt, drv);
 drv->wdt.parent = &dev->dev;
 mcb_set_drvdata(dev, drv);

 return watchdog_register_device(&men_z069_wdt);

release_mem:
 mcb_release_mem(mem);
 return -ENOMEM;
}
