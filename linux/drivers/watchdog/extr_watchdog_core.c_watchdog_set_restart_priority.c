
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int priority; } ;
struct watchdog_device {TYPE_1__ restart_nb; } ;



void watchdog_set_restart_priority(struct watchdog_device *wdd, int priority)
{
 wdd->restart_nb.priority = priority;
}
