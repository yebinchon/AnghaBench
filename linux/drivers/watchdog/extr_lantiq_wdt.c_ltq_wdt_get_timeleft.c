
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct watchdog_device {int dummy; } ;
struct ltq_wdt_priv {int clk_rate; } ;


 int LTQ_WDT_SR ;
 int LTQ_WDT_SR_VALUE_MASK ;
 unsigned int do_div (int,int ) ;
 struct ltq_wdt_priv* ltq_wdt_get_priv (struct watchdog_device*) ;
 int ltq_wdt_r32 (struct ltq_wdt_priv*,int ) ;

__attribute__((used)) static unsigned int ltq_wdt_get_timeleft(struct watchdog_device *wdt)
{
 struct ltq_wdt_priv *priv = ltq_wdt_get_priv(wdt);
 u64 timeout;

 timeout = ltq_wdt_r32(priv, LTQ_WDT_SR) & LTQ_WDT_SR_VALUE_MASK;
 return do_div(timeout, priv->clk_rate);
}
