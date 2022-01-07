
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pch_dev {TYPE_1__* regs; } ;
struct TYPE_2__ {int control; } ;


 int PCH_TSC_RESET ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;

__attribute__((used)) static inline void pch_block_reset(struct pch_dev *chip)
{
 u32 val;

 val = ioread32(&chip->regs->control) | PCH_TSC_RESET;
 iowrite32(val, (&chip->regs->control));
 val = val & ~PCH_TSC_RESET;
 iowrite32(val, (&chip->regs->control));
}
