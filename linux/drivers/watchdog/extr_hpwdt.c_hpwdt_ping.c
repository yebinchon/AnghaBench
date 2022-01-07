
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int max_hw_heartbeat_ms; int timeout; int parent; } ;


 int SECS_TO_TICKS (int ) ;
 int dev_dbg (int ,char*,int ,int) ;
 int hpwdt_ping_ticks (int) ;
 int min (int ,int) ;

__attribute__((used)) static int hpwdt_ping(struct watchdog_device *wdd)
{
 int reload = SECS_TO_TICKS(min(wdd->timeout, wdd->max_hw_heartbeat_ms/1000));

 dev_dbg(wdd->parent, "ping  watchdog 0x%08x:0x%08x\n", wdd->timeout, reload);
 hpwdt_ping_ticks(reload);

 return 0;
}
