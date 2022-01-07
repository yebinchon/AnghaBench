
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ixp46x_ts_regs {int systime_hi; int systime_lo; } ;


 int TICKS_NS_SHIFT ;
 int __raw_writel (int,int *) ;

__attribute__((used)) static void ixp_systime_write(struct ixp46x_ts_regs *regs, u64 ns)
{
 u32 hi, lo;

 ns >>= TICKS_NS_SHIFT;
 hi = ns >> 32;
 lo = ns & 0xffffffff;

 __raw_writel(lo, &regs->systime_lo);
 __raw_writel(hi, &regs->systime_hi);
}
