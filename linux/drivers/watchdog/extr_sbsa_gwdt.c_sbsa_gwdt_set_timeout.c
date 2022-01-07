
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;
struct sbsa_gwdt {unsigned int clk; scalar_t__ control_base; } ;


 scalar_t__ SBSA_GWDT_WOR ;
 scalar_t__ action ;
 struct sbsa_gwdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sbsa_gwdt_set_timeout(struct watchdog_device *wdd,
     unsigned int timeout)
{
 struct sbsa_gwdt *gwdt = watchdog_get_drvdata(wdd);

 wdd->timeout = timeout;

 if (action)
  writel(gwdt->clk * timeout,
         gwdt->control_base + SBSA_GWDT_WOR);
 else





  writel(gwdt->clk / 2 * timeout,
         gwdt->control_base + SBSA_GWDT_WOR);

 return 0;
}
