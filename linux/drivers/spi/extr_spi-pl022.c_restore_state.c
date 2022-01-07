
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl022 {int virtbase; TYPE_1__* vendor; struct chip_data* cur_chip; } ;
struct chip_data {int cpsr; int dmacr; int cr1; int cr0; } ;
struct TYPE_2__ {scalar_t__ extended_cr; } ;


 int CLEAR_ALL_INTERRUPTS ;
 int DISABLE_ALL_INTERRUPTS ;
 int SSP_CPSR (int ) ;
 int SSP_CR0 (int ) ;
 int SSP_CR1 (int ) ;
 int SSP_DMACR (int ) ;
 int SSP_ICR (int ) ;
 int SSP_IMSC (int ) ;
 int writel (int ,int ) ;
 int writew (int ,int ) ;

__attribute__((used)) static void restore_state(struct pl022 *pl022)
{
 struct chip_data *chip = pl022->cur_chip;

 if (pl022->vendor->extended_cr)
  writel(chip->cr0, SSP_CR0(pl022->virtbase));
 else
  writew(chip->cr0, SSP_CR0(pl022->virtbase));
 writew(chip->cr1, SSP_CR1(pl022->virtbase));
 writew(chip->dmacr, SSP_DMACR(pl022->virtbase));
 writew(chip->cpsr, SSP_CPSR(pl022->virtbase));
 writew(DISABLE_ALL_INTERRUPTS, SSP_IMSC(pl022->virtbase));
 writew(CLEAR_ALL_INTERRUPTS, SSP_ICR(pl022->virtbase));
}
