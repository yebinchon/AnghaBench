
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct npcm_wdt {int reg; } ;


 int NPCM_WTE ;
 int NPCM_WTR ;
 int NPCM_WTRE ;
 struct npcm_wdt* to_npcm_wdt (struct watchdog_device*) ;
 int udelay (int) ;
 int writel (int,int ) ;

__attribute__((used)) static int npcm_wdt_restart(struct watchdog_device *wdd,
       unsigned long action, void *data)
{
 struct npcm_wdt *wdt = to_npcm_wdt(wdd);

 writel(NPCM_WTR | NPCM_WTRE | NPCM_WTE, wdt->reg);
 udelay(1000);

 return 0;
}
