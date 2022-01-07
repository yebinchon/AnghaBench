
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int watchdog_work; } ;
struct zd_mac {TYPE_1__ beacon; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int beacon_watchdog_handler ;

__attribute__((used)) static void beacon_init(struct zd_mac *mac)
{
 INIT_DELAYED_WORK(&mac->beacon.watchdog_work, beacon_watchdog_handler);
}
