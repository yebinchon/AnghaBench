
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_domain_info {struct irq_chip* chip; } ;
struct irq_chip {int irq_ack; int irq_mask; int irq_unmask; int irq_set_type; int irq_write_msi_msg; int irq_compose_msi_msg; int irq_release_resources; int irq_request_resources; } ;


 scalar_t__ WARN_ON (int) ;
 int irq_chip_ack_parent ;
 int irq_chip_mask_parent ;
 int irq_chip_release_resources_parent ;
 int irq_chip_request_resources_parent ;
 int irq_chip_set_type_parent ;
 int irq_chip_unmask_parent ;
 int ti_sci_inta_msi_compose_msi_msg ;
 int ti_sci_inta_msi_write_msg ;

__attribute__((used)) static void ti_sci_inta_msi_update_chip_ops(struct msi_domain_info *info)
{
 struct irq_chip *chip = info->chip;

 if (WARN_ON(!chip))
  return;

 chip->irq_request_resources = irq_chip_request_resources_parent;
 chip->irq_release_resources = irq_chip_release_resources_parent;
 chip->irq_compose_msi_msg = ti_sci_inta_msi_compose_msi_msg;
 chip->irq_write_msi_msg = ti_sci_inta_msi_write_msg;
 chip->irq_set_type = irq_chip_set_type_parent;
 chip->irq_unmask = irq_chip_unmask_parent;
 chip->irq_mask = irq_chip_mask_parent;
 chip->irq_ack = irq_chip_ack_parent;
}
