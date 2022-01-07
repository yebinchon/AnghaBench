
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int panic (char*) ;

__attribute__((used)) static void pretimeout_panic(struct watchdog_device *wdd)
{
 panic("watchdog pretimeout event\n");
}
