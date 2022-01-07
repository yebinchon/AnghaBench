
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct irq_data {int hwirq; } ;
typedef enum irqchip_irq_state { ____Placeholder_irqchip_irq_state } irqchip_irq_state ;


 int BIT (int) ;
 int EINVAL ;
 int IRQCHIP_STATE_LINE_LEVEL ;
 int QPNPINT_REG_RT_STS ;
 int hwirq_to_irq (int ) ;
 int qpnpint_spmi_read (struct irq_data*,int ,int*,int) ;

__attribute__((used)) static int qpnpint_get_irqchip_state(struct irq_data *d,
         enum irqchip_irq_state which,
         bool *state)
{
 u8 irq = hwirq_to_irq(d->hwirq);
 u8 status = 0;

 if (which != IRQCHIP_STATE_LINE_LEVEL)
  return -EINVAL;

 qpnpint_spmi_read(d, QPNPINT_REG_RT_STS, &status, 1);
 *state = !!(status & BIT(irq));

 return 0;
}
