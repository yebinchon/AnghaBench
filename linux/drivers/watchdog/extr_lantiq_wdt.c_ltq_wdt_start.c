
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int timeout; } ;
struct ltq_wdt_priv {int clk_rate; } ;


 int LTQ_WDT_CR ;
 int LTQ_WDT_CR_CLKDIV ;
 int LTQ_WDT_CR_GEN ;
 int LTQ_WDT_CR_MAX_TIMEOUT ;
 int LTQ_WDT_CR_PW1 ;
 int LTQ_WDT_CR_PW2 ;
 int LTQ_WDT_CR_PWL ;
 int LTQ_WDT_CR_PW_MASK ;
 struct ltq_wdt_priv* ltq_wdt_get_priv (struct watchdog_device*) ;
 int ltq_wdt_mask (struct ltq_wdt_priv*,int,int,int ) ;

__attribute__((used)) static int ltq_wdt_start(struct watchdog_device *wdt)
{
 struct ltq_wdt_priv *priv = ltq_wdt_get_priv(wdt);
 u32 timeout;

 timeout = wdt->timeout * priv->clk_rate;

 ltq_wdt_mask(priv, LTQ_WDT_CR_PW_MASK, LTQ_WDT_CR_PW1, LTQ_WDT_CR);

 ltq_wdt_mask(priv, LTQ_WDT_CR_PW_MASK | LTQ_WDT_CR_MAX_TIMEOUT,
       LTQ_WDT_CR_GEN | LTQ_WDT_CR_PWL | LTQ_WDT_CR_CLKDIV |
       LTQ_WDT_CR_PW2 | timeout,
       LTQ_WDT_CR);

 return 0;
}
