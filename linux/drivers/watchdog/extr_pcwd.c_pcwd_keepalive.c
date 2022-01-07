
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next_heartbeat; } ;


 scalar_t__ DEBUG ;
 int HZ ;
 scalar_t__ debug ;
 int heartbeat ;
 scalar_t__ jiffies ;
 TYPE_1__ pcwd_private ;
 int pr_debug (char*) ;

__attribute__((used)) static int pcwd_keepalive(void)
{

 pcwd_private.next_heartbeat = jiffies + (heartbeat * HZ);

 if (debug >= DEBUG)
  pr_debug("Watchdog keepalive signal send\n");

 return 0;
}
