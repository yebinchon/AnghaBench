
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_tmu_data {int irq_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t exynos_tmu_irq(int irq, void *id)
{
 struct exynos_tmu_data *data = id;

 disable_irq_nosync(irq);
 schedule_work(&data->irq_work);

 return IRQ_HANDLED;
}
