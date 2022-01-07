
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_field32 {int dummy; } ;
struct rt2x00_dev {int irqmask_lock; } ;


 int INT_MASK_CSR ;
 int rt2x00_set_field32 (int *,struct rt2x00_field32,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline void rt2800mmio_enable_interrupt(struct rt2x00_dev *rt2x00dev,
            struct rt2x00_field32 irq_field)
{
 u32 reg;





 spin_lock_irq(&rt2x00dev->irqmask_lock);
 reg = rt2x00mmio_register_read(rt2x00dev, INT_MASK_CSR);
 rt2x00_set_field32(&reg, irq_field, 1);
 rt2x00mmio_register_write(rt2x00dev, INT_MASK_CSR, reg);
 spin_unlock_irq(&rt2x00dev->irqmask_lock);
}
