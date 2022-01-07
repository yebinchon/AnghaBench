
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct lp8788_charger {scalar_t__ num_irqs; int charger_work; } ;


 int ARRAY_SIZE (char const**) ;
 int EINVAL ;
 int INIT_WORK (int *,int ) ;
 char const* LP8788_BATT_IRQ ;
 char const* LP8788_CHG_IRQ ;
 scalar_t__ LP8788_MAX_CHG_IRQS ;
 char const* LP8788_PRSW_IRQ ;
 int dev_err (int *,char*,scalar_t__) ;
 int dev_warn (int *,char*,char const*) ;
 int lp8788_charger_event ;
 int lp8788_set_irqs (struct platform_device*,struct lp8788_charger*,char const*) ;

__attribute__((used)) static int lp8788_irq_register(struct platform_device *pdev,
    struct lp8788_charger *pchg)
{
 const char *name[] = {
  LP8788_CHG_IRQ, LP8788_PRSW_IRQ, LP8788_BATT_IRQ
 };
 int i;
 int ret;

 INIT_WORK(&pchg->charger_work, lp8788_charger_event);
 pchg->num_irqs = 0;

 for (i = 0; i < ARRAY_SIZE(name); i++) {
  ret = lp8788_set_irqs(pdev, pchg, name[i]);
  if (ret) {
   dev_warn(&pdev->dev, "irq setup failed: %s\n", name[i]);
   return ret;
  }
 }

 if (pchg->num_irqs > LP8788_MAX_CHG_IRQS) {
  dev_err(&pdev->dev, "invalid total number of irqs: %d\n",
   pchg->num_irqs);
  return -EINVAL;
 }


 return 0;
}
