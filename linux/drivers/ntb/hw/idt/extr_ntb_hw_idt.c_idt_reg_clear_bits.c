
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct idt_ntb_dev {int dummy; } ;
typedef int spinlock_t ;


 int idt_nt_read (struct idt_ntb_dev*,unsigned int) ;
 int idt_nt_write (struct idt_ntb_dev*,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void idt_reg_clear_bits(struct idt_ntb_dev *ndev,
         unsigned int reg, spinlock_t *reg_lock,
         u64 clear_bits)
{
 unsigned long irqflags;
 u32 data;


 spin_lock_irqsave(reg_lock, irqflags);
 data = idt_nt_read(ndev, reg) & ~(u32)clear_bits;
 idt_nt_write(ndev, reg, data);

 spin_unlock_irqrestore(reg_lock, irqflags);
}
