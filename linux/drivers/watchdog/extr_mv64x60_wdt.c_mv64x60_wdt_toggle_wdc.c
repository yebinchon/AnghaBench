
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MV64x60_WDC_ENABLED_SHIFT ;
 scalar_t__ MV64x60_WDT_WDC_OFFSET ;
 int mv64x60_wdt_count ;
 scalar_t__ mv64x60_wdt_regs ;
 int mv64x60_wdt_spinlock ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mv64x60_wdt_toggle_wdc(int enabled_predicate, int field_shift)
{
 u32 data;
 u32 enabled;
 int ret = 0;

 spin_lock(&mv64x60_wdt_spinlock);
 data = readl(mv64x60_wdt_regs + MV64x60_WDT_WDC_OFFSET);
 enabled = (data >> MV64x60_WDC_ENABLED_SHIFT) & 1;


 if ((enabled ^ enabled_predicate) == 0) {

  data = (1 << field_shift) | mv64x60_wdt_count;
  writel(data, mv64x60_wdt_regs + MV64x60_WDT_WDC_OFFSET);

  data = (2 << field_shift) | mv64x60_wdt_count;
  writel(data, mv64x60_wdt_regs + MV64x60_WDT_WDC_OFFSET);
  ret = 1;
 }
 spin_unlock(&mv64x60_wdt_spinlock);

 return ret;
}
