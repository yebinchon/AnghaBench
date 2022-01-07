
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct zx2967_wdt {scalar_t__ reg_base; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 zx2967_wdt_readl(struct zx2967_wdt *wdt, u16 reg)
{
 return readl_relaxed(wdt->reg_base + reg);
}
