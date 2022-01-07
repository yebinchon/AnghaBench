
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dummy; } ;
struct platform_device {int dev; int name; } ;


 int ENOMEM ;
 int RFKILL_TYPE_WLAN ;
 int platform_set_drvdata (struct platform_device*,struct rfkill*) ;
 struct rfkill* rfkill_alloc (int ,int *,int ,int *,int *) ;
 int rfkill_destroy (struct rfkill*) ;
 int rfkill_ops ;
 int rfkill_register (struct rfkill*) ;

__attribute__((used)) static int xo1_rfkill_probe(struct platform_device *pdev)
{
 struct rfkill *rfk;
 int r;

 rfk = rfkill_alloc(pdev->name, &pdev->dev, RFKILL_TYPE_WLAN,
      &rfkill_ops, ((void*)0));
 if (!rfk)
  return -ENOMEM;

 r = rfkill_register(rfk);
 if (r) {
  rfkill_destroy(rfk);
  return r;
 }

 platform_set_drvdata(pdev, rfk);
 return 0;
}
