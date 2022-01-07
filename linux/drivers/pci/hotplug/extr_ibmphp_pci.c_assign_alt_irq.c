
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_func {int* irq; } ;


 int LAN_IRQ ;
 int OTHER_IRQ ;


 int SCSI_IRQ ;

__attribute__((used)) static void assign_alt_irq(struct pci_func *cur_func, u8 class_code)
{
 int j;
 for (j = 0; j < 4; j++) {
  if (cur_func->irq[j] == 0xff) {
   switch (class_code) {
    case 128:
     cur_func->irq[j] = SCSI_IRQ;
     break;
    case 129:
     cur_func->irq[j] = LAN_IRQ;
     break;
    default:
     cur_func->irq[j] = OTHER_IRQ;
     break;
   }
  }
 }
}
