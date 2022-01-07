
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct npcm_wdt {int reg; } ;


 int NPCM_WTE ;
 int readl (int ) ;
 struct npcm_wdt* to_npcm_wdt (struct watchdog_device*) ;

__attribute__((used)) static bool npcm_is_running(struct watchdog_device *wdd)
{
 struct npcm_wdt *wdt = to_npcm_wdt(wdd);

 return readl(wdt->reg) & NPCM_WTE;
}
