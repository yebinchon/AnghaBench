
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int GPE0A_PME_B0_STS_BIT ;
 int GPE0A_STS_PORT ;
 int outl (int ,int ) ;

__attribute__((used)) static void int0002_irq_ack(struct irq_data *data)
{
 outl(GPE0A_PME_B0_STS_BIT, GPE0A_STS_PORT);
}
