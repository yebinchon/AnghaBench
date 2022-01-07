
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct esp {scalar_t__ regs; } ;


 void iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void pci_esp_write32(struct esp *esp, u32 val, unsigned long reg)
{
 return iowrite32(val, esp->regs + (reg * 4UL));
}
