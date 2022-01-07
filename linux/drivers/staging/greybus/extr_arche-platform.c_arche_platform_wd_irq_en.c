
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arche_platform_drvdata {int wake_detect_irq; } ;


 int enable_irq (int ) ;

__attribute__((used)) static void arche_platform_wd_irq_en(struct arche_platform_drvdata *arche_pdata)
{

 enable_irq(arche_pdata->wake_detect_irq);
}
