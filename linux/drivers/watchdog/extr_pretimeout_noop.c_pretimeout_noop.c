
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int id; } ;


 int pr_alert (char*,int ) ;

__attribute__((used)) static void pretimeout_noop(struct watchdog_device *wdd)
{
 pr_alert("watchdog%d: pretimeout event\n", wdd->id);
}
