
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCTL_RST ;
 int PARITY_MASK ;
 scalar_t__ REG_ACTL ;
 scalar_t__ REG_BCTL ;
 scalar_t__ REG_MCTL ;
 int mdelay (int) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void fdomain_reset(int base)
{
 outb(BCTL_RST, base + REG_BCTL);
 mdelay(20);
 outb(0, base + REG_BCTL);
 mdelay(1150);
 outb(0, base + REG_MCTL);
 outb(PARITY_MASK, base + REG_ACTL);
}
