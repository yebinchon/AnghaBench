
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int dummy; } ;


 int GPE0A_EN_PORT ;
 int GPE0A_PME_B0_EN_BIT ;
 int inl (int ) ;
 int outl (int ,int ) ;

__attribute__((used)) static void int0002_irq_unmask(struct irq_data *data)
{
 u32 gpe_en_reg;

 gpe_en_reg = inl(GPE0A_EN_PORT);
 gpe_en_reg |= GPE0A_PME_B0_EN_BIT;
 outl(gpe_en_reg, GPE0A_EN_PORT);
}
