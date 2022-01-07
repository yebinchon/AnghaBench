
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;


 int coh901327_enable (int) ;

__attribute__((used)) static int coh901327_start(struct watchdog_device *wdt_dev)
{
 coh901327_enable(wdt_dev->timeout * 100);
 return 0;
}
