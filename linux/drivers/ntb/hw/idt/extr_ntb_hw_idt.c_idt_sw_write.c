
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u32 ;
struct idt_ntb_dev {int gasa_lock; scalar_t__ cfgspc; } ;
typedef int ptrdiff_t ;


 scalar_t__ IDT_NT_GASAADDR ;
 scalar_t__ IDT_NT_GASADATA ;
 int IDT_REG_ALIGN ;
 unsigned int const IDT_REG_SW_MAX ;
 int IS_ALIGNED (unsigned int const,int ) ;
 scalar_t__ WARN_ON (int) ;
 int iowrite32 (int const,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void idt_sw_write(struct idt_ntb_dev *ndev,
    const unsigned int reg, const u32 data)
{
 unsigned long irqflags;





 if (WARN_ON(reg > IDT_REG_SW_MAX || !IS_ALIGNED(reg, IDT_REG_ALIGN)))
  return;


 spin_lock_irqsave(&ndev->gasa_lock, irqflags);

 iowrite32((u32)reg, ndev->cfgspc + (ptrdiff_t)IDT_NT_GASAADDR);

 iowrite32(data, ndev->cfgspc + (ptrdiff_t)IDT_NT_GASADATA);

 spin_unlock_irqrestore(&ndev->gasa_lock, irqflags);
}
