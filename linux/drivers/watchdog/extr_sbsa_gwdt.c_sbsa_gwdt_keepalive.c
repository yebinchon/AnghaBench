
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct sbsa_gwdt {scalar_t__ refresh_base; } ;


 scalar_t__ SBSA_GWDT_WRR ;
 struct sbsa_gwdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sbsa_gwdt_keepalive(struct watchdog_device *wdd)
{
 struct sbsa_gwdt *gwdt = watchdog_get_drvdata(wdd);





 writel(0, gwdt->refresh_base + SBSA_GWDT_WRR);

 return 0;
}
