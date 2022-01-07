
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ixp46x_ts_regs {int systime_hi; int systime_lo; } ;


 int TICKS_NS_SHIFT ;
 int __raw_readl (int *) ;

__attribute__((used)) static u64 ixp_systime_read(struct ixp46x_ts_regs *regs)
{
 u64 ns;
 u32 lo, hi;

 lo = __raw_readl(&regs->systime_lo);
 hi = __raw_readl(&regs->systime_hi);

 ns = ((u64) hi) << 32;
 ns |= lo;
 ns <<= TICKS_NS_SHIFT;

 return ns;
}
