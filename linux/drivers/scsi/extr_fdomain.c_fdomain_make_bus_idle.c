
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdomain {scalar_t__ chip; scalar_t__ base; } ;


 int ACTL_CLRFIRQ ;
 int ACTL_RESET ;
 int PARITY_MASK ;
 scalar_t__ REG_ACTL ;
 scalar_t__ REG_BCTL ;
 scalar_t__ REG_MCTL ;
 int outb (int,scalar_t__) ;
 scalar_t__ tmc18c30 ;
 scalar_t__ tmc18c50 ;

__attribute__((used)) static inline void fdomain_make_bus_idle(struct fdomain *fd)
{
 outb(0, fd->base + REG_BCTL);
 outb(0, fd->base + REG_MCTL);
 if (fd->chip == tmc18c50 || fd->chip == tmc18c30)

  outb(ACTL_RESET | ACTL_CLRFIRQ | PARITY_MASK,
       fd->base + REG_ACTL);
 else
  outb(ACTL_RESET | PARITY_MASK, fd->base + REG_ACTL);
}
