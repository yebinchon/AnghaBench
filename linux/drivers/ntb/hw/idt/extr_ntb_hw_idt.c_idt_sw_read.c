
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idt_ntb_dev {int gasa_lock; scalar_t__ cfgspc; } ;
typedef int ptrdiff_t ;


 scalar_t__ IDT_NT_GASAADDR ;
 scalar_t__ IDT_NT_GASADATA ;
 int IDT_REG_ALIGN ;
 unsigned int const IDT_REG_SW_MAX ;
 int IS_ALIGNED (unsigned int const,int ) ;
 scalar_t__ WARN_ON (int) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 idt_sw_read(struct idt_ntb_dev *ndev, const unsigned int reg)
{
 unsigned long irqflags;
 u32 data;





 if (WARN_ON(reg > IDT_REG_SW_MAX || !IS_ALIGNED(reg, IDT_REG_ALIGN)))
  return ~0;


 spin_lock_irqsave(&ndev->gasa_lock, irqflags);

 iowrite32((u32)reg, ndev->cfgspc + (ptrdiff_t)IDT_NT_GASAADDR);

 data = ioread32(ndev->cfgspc + (ptrdiff_t)IDT_NT_GASADATA);

 spin_unlock_irqrestore(&ndev->gasa_lock, irqflags);

 return data;
}
