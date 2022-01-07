
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
 int iowrite32 (int const,scalar_t__) ;

__attribute__((used)) static void idt_nt_write(struct idt_ntb_dev *ndev,
    const unsigned int reg, const u32 data)
{




 if (WARN_ON(reg > IDT_REG_PCI_MAX || !IS_ALIGNED(reg, IDT_REG_ALIGN)))
  return;


 iowrite32(data, ndev->cfgspc + (ptrdiff_t)reg);
}
