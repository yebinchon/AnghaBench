
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct npcm_wdt {int reg; } ;


 struct npcm_wdt* to_npcm_wdt (struct watchdog_device*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int npcm_wdt_stop(struct watchdog_device *wdd)
{
 struct npcm_wdt *wdt = to_npcm_wdt(wdd);

 writel(0, wdt->reg);

 return 0;
}
