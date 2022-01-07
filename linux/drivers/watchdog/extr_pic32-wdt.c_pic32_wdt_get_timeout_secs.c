
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct pic32_wdt {int clk; } ;
struct device {int dummy; } ;


 unsigned long BIT (unsigned long) ;
 unsigned long clk_get_rate (int ) ;
 int dev_dbg (struct device*,char*,unsigned long,unsigned long,...) ;
 int pic32_wdt_get_clk_id (struct pic32_wdt*) ;
 unsigned long pic32_wdt_get_post_scaler (struct pic32_wdt*) ;

__attribute__((used)) static u32 pic32_wdt_get_timeout_secs(struct pic32_wdt *wdt, struct device *dev)
{
 unsigned long rate;
 u32 period, ps, terminal;

 rate = clk_get_rate(wdt->clk);

 dev_dbg(dev, "wdt: clk_id %d, clk_rate %lu (prescale)\n",
  pic32_wdt_get_clk_id(wdt), rate);


 rate >>= 5;
 if (!rate)
  return 0;


 ps = pic32_wdt_get_post_scaler(wdt);
 terminal = BIT(ps);


 period = terminal / rate;
 dev_dbg(dev,
  "wdt: clk_rate %lu (postscale) / terminal %d, timeout %dsec\n",
  rate, terminal, period);

 return period;
}
