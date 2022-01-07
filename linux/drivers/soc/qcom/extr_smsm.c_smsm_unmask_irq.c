
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smsm_entry {scalar_t__ subscription; int irq_enabled; struct qcom_smsm* smsm; } ;
struct qcom_smsm {scalar_t__ local_host; } ;
struct irq_data {int dummy; } ;
typedef int irq_hw_number_t ;


 int BIT (int ) ;
 struct smsm_entry* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int readl (scalar_t__) ;
 int set_bit (int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void smsm_unmask_irq(struct irq_data *irqd)
{
 struct smsm_entry *entry = irq_data_get_irq_chip_data(irqd);
 irq_hw_number_t irq = irqd_to_hwirq(irqd);
 struct qcom_smsm *smsm = entry->smsm;
 u32 val;

 set_bit(irq, entry->irq_enabled);

 if (entry->subscription) {
  val = readl(entry->subscription + smsm->local_host);
  val |= BIT(irq);
  writel(val, entry->subscription + smsm->local_host);
 }
}
