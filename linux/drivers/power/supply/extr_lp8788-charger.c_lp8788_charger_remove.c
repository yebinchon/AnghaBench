
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct lp8788_charger {int charger_work; } ;


 int flush_work (int *) ;
 int lp8788_irq_unregister (struct platform_device*,struct lp8788_charger*) ;
 int lp8788_psy_unregister (struct lp8788_charger*) ;
 int lp8788_release_adc_channel (struct lp8788_charger*) ;
 struct lp8788_charger* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int lp8788_charger_remove(struct platform_device *pdev)
{
 struct lp8788_charger *pchg = platform_get_drvdata(pdev);

 flush_work(&pchg->charger_work);
 lp8788_irq_unregister(pdev, pchg);
 lp8788_psy_unregister(pchg);
 lp8788_release_adc_channel(pchg);

 return 0;
}
