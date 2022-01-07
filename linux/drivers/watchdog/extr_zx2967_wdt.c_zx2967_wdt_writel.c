
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct zx2967_wdt {scalar_t__ reg_base; } ;


 int ZX2967_WDT_WRITEKEY ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void zx2967_wdt_writel(struct zx2967_wdt *wdt, u16 reg, u32 val)
{
 writel_relaxed(val | ZX2967_WDT_WRITEKEY, wdt->reg_base + reg);
}
