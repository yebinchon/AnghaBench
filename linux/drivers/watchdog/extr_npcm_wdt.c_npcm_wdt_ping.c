
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int dummy; } ;
struct npcm_wdt {int reg; } ;


 int NPCM_WTR ;
 int readl (int ) ;
 struct npcm_wdt* to_npcm_wdt (struct watchdog_device*) ;
 int writel (int,int ) ;

__attribute__((used)) static int npcm_wdt_ping(struct watchdog_device *wdd)
{
 struct npcm_wdt *wdt = to_npcm_wdt(wdd);
 u32 val;

 val = readl(wdt->reg);
 writel(val | NPCM_WTR, wdt->reg);

 return 0;
}
