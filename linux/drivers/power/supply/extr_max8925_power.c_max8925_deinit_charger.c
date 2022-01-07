
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8925_power_info {struct max8925_chip* chip; } ;
struct max8925_chip {int irq_base; } ;


 int MAX8925_IRQ_VCHG_DC_OVP ;
 int MAX8925_IRQ_VCHG_TMR_FAULT ;
 int free_irq (int,struct max8925_power_info*) ;

__attribute__((used)) static int max8925_deinit_charger(struct max8925_power_info *info)
{
 struct max8925_chip *chip = info->chip;
 int irq;

 irq = chip->irq_base + MAX8925_IRQ_VCHG_DC_OVP;
 for (; irq <= chip->irq_base + MAX8925_IRQ_VCHG_TMR_FAULT; irq++)
  free_irq(irq, info);

 return 0;
}
