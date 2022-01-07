
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pcf50633_mbc {int ac; int adapter; int usb; int pcf; } ;


 int ARRAY_SIZE (int *) ;
 int * mbc_irq_handlers ;
 int pcf50633_free_irq (int ,int ) ;
 struct pcf50633_mbc* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int pcf50633_mbc_remove(struct platform_device *pdev)
{
 struct pcf50633_mbc *mbc = platform_get_drvdata(pdev);
 int i;


 for (i = 0; i < ARRAY_SIZE(mbc_irq_handlers); i++)
  pcf50633_free_irq(mbc->pcf, mbc_irq_handlers[i]);

 power_supply_unregister(mbc->usb);
 power_supply_unregister(mbc->adapter);
 power_supply_unregister(mbc->ac);

 return 0;
}
