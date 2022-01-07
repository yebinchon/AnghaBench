
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max63xx_wdt {int lock; int base; } ;


 int MAX6369_WDSET ;
 int __raw_readb (int ) ;
 int __raw_writeb (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void max63xx_mmap_set(struct max63xx_wdt *wdt, u8 set)
{
 u8 val;

 spin_lock(&wdt->lock);

 val = __raw_readb(wdt->base);
 val &= ~MAX6369_WDSET;
 val |= set & MAX6369_WDSET;
 __raw_writeb(val, wdt->base);

 spin_unlock(&wdt->lock);
}
