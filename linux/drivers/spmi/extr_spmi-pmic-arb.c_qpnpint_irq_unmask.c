
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spmi_pmic_arb {struct pmic_arb_ver_ops* ver_ops; } ;
struct pmic_arb_ver_ops {int (* acc_enable ) (struct spmi_pmic_arb*,int ) ;} ;
struct irq_data {int hwirq; } ;


 int BIT (int) ;
 int QPNPINT_REG_EN_SET ;
 int QPNPINT_REG_LATCHED_CLR ;
 int SPMI_PIC_ACC_ENABLE_BIT ;
 int hwirq_to_apid (int ) ;
 int hwirq_to_irq (int ) ;
 struct spmi_pmic_arb* irq_data_get_irq_chip_data (struct irq_data*) ;
 int qpnpint_spmi_read (struct irq_data*,int ,int*,int) ;
 int qpnpint_spmi_write (struct irq_data*,int ,int**,int) ;
 int stub1 (struct spmi_pmic_arb*,int ) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static void qpnpint_irq_unmask(struct irq_data *d)
{
 struct spmi_pmic_arb *pmic_arb = irq_data_get_irq_chip_data(d);
 const struct pmic_arb_ver_ops *ver_ops = pmic_arb->ver_ops;
 u8 irq = hwirq_to_irq(d->hwirq);
 u16 apid = hwirq_to_apid(d->hwirq);
 u8 buf[2];

 writel_relaxed(SPMI_PIC_ACC_ENABLE_BIT,
   ver_ops->acc_enable(pmic_arb, apid));

 qpnpint_spmi_read(d, QPNPINT_REG_EN_SET, &buf[0], 1);
 if (!(buf[0] & BIT(irq))) {





  buf[0] = BIT(irq);
  buf[1] = BIT(irq);
  qpnpint_spmi_write(d, QPNPINT_REG_LATCHED_CLR, &buf, 2);
 }
}
