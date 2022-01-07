
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {unsigned int num_chips; unsigned int** regs; int regs_lock; } ;
struct ni_gpct {unsigned int chip_index; struct ni_gpct_device* counter_dev; } ;
typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;


 int NITIO_NUM_REGS ;
 int ni_tio_write (struct ni_gpct*,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ni_tio_set_bits_transient(struct ni_gpct *counter,
          enum ni_gpct_register reg,
          unsigned int mask, unsigned int value,
          unsigned int transient)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 unsigned int chip = counter->chip_index;
 unsigned long flags;

 if (reg < NITIO_NUM_REGS && chip < counter_dev->num_chips) {
  unsigned int *regs = counter_dev->regs[chip];

  spin_lock_irqsave(&counter_dev->regs_lock, flags);
  regs[reg] &= ~mask;
  regs[reg] |= (value & mask);
  ni_tio_write(counter, regs[reg] | transient, reg);
  spin_unlock_irqrestore(&counter_dev->regs_lock, flags);
 }
}
