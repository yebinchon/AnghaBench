
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int IRQ_STATUS_IRQ_BITS ;
 int IRQ_STATUS_IRQ_PER_REG ;

__attribute__((used)) static inline u32 sunxi_irq_status_offset(u16 irq)
{
 u32 irq_num = irq % IRQ_STATUS_IRQ_PER_REG;
 return irq_num * IRQ_STATUS_IRQ_BITS;
}
