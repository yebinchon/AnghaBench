
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idt_ntb_dev {scalar_t__ cfgspc; } ;
typedef int ptrdiff_t ;


 int IDT_REG_ALIGN ;
 unsigned int const IDT_REG_PCI_MAX ;
 int IS_ALIGNED (unsigned int const,int ) ;
 scalar_t__ WARN_ON (int) ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 idt_nt_read(struct idt_ntb_dev *ndev, const unsigned int reg)
{




 if (WARN_ON(reg > IDT_REG_PCI_MAX || !IS_ALIGNED(reg, IDT_REG_ALIGN)))
  return ~0;


 return ioread32(ndev->cfgspc + (ptrdiff_t)reg);
}
