
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int max_hw_heartbeat_ms; int timeout; int parent; } ;


 int SECS_TO_TICKS (int ) ;
 int dev_dbg (int ,char*,int ,int,int) ;
 int hpwdt_timer_con ;
 int hpwdt_timer_reg ;
 int iowrite16 (int,int ) ;
 int iowrite8 (int,int ) ;
 int min (int ,int) ;
 scalar_t__ pretimeout ;

__attribute__((used)) static int hpwdt_start(struct watchdog_device *wdd)
{
 int control = 0x81 | (pretimeout ? 0x4 : 0);
 int reload = SECS_TO_TICKS(min(wdd->timeout, wdd->max_hw_heartbeat_ms/1000));

 dev_dbg(wdd->parent, "start watchdog 0x%08x:0x%08x:0x%02x\n", wdd->timeout, reload, control);
 iowrite16(reload, hpwdt_timer_reg);
 iowrite8(control, hpwdt_timer_con);

 return 0;
}
