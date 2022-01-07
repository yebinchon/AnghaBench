
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct max63xx_wdt {int set; int ping; int lock; int base; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int max63xx_mmap_ping ;
 int max63xx_mmap_set ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int max63xx_mmap_init(struct platform_device *p, struct max63xx_wdt *wdt)
{
 wdt->base = devm_platform_ioremap_resource(p, 0);
 if (IS_ERR(wdt->base))
  return PTR_ERR(wdt->base);

 spin_lock_init(&wdt->lock);

 wdt->ping = max63xx_mmap_ping;
 wdt->set = max63xx_mmap_set;
 return 0;
}
