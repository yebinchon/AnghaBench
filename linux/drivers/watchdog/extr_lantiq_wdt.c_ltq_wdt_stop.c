
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct ltq_wdt_priv {int dummy; } ;


 int LTQ_WDT_CR ;
 int LTQ_WDT_CR_GEN ;
 int LTQ_WDT_CR_PW1 ;
 int LTQ_WDT_CR_PW2 ;
 int LTQ_WDT_CR_PW_MASK ;
 struct ltq_wdt_priv* ltq_wdt_get_priv (struct watchdog_device*) ;
 int ltq_wdt_mask (struct ltq_wdt_priv*,int,int ,int ) ;

__attribute__((used)) static int ltq_wdt_stop(struct watchdog_device *wdt)
{
 struct ltq_wdt_priv *priv = ltq_wdt_get_priv(wdt);

 ltq_wdt_mask(priv, LTQ_WDT_CR_PW_MASK, LTQ_WDT_CR_PW1, LTQ_WDT_CR);
 ltq_wdt_mask(priv, LTQ_WDT_CR_GEN | LTQ_WDT_CR_PW_MASK,
       LTQ_WDT_CR_PW2, LTQ_WDT_CR);

 return 0;
}
