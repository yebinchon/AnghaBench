
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int DIAG_STAT_X288 ;
 int DIAG_WDOG_BUSY ;
 int WDT_FUNC_CANCEL ;
 int __diag288 (int ,int ,int ,int ) ;
 int clear_bit (int ,int *) ;
 int diag_stat_inc (int ) ;
 int wdt_status ;

__attribute__((used)) static int wdt_stop(struct watchdog_device *dev)
{
 int ret;

 diag_stat_inc(DIAG_STAT_X288);
 ret = __diag288(WDT_FUNC_CANCEL, 0, 0, 0);

 clear_bit(DIAG_WDOG_BUSY, &wdt_status);

 return ret;
}
