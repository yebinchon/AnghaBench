
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_tmu {int regmap; } ;
typedef int irqreturn_t ;


 int BXTWC_TMUIRQ ;
 unsigned int BXTWC_TMU_ALRM_IRQ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t bxt_wcove_tmu_irq_handler(int irq, void *data)
{
 struct wcove_tmu *wctmu = data;
 unsigned int tmu_irq;


 regmap_read(wctmu->regmap, BXTWC_TMUIRQ, &tmu_irq);
 if (tmu_irq & BXTWC_TMU_ALRM_IRQ) {

  regmap_write(wctmu->regmap, BXTWC_TMUIRQ, tmu_irq);
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
