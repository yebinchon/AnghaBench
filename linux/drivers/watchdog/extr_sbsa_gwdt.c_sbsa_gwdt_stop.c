
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct sbsa_gwdt {scalar_t__ control_base; } ;


 scalar_t__ SBSA_GWDT_WCS ;
 struct sbsa_gwdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sbsa_gwdt_stop(struct watchdog_device *wdd)
{
 struct sbsa_gwdt *gwdt = watchdog_get_drvdata(wdd);


 writel(0, gwdt->control_base + SBSA_GWDT_WCS);

 return 0;
}
