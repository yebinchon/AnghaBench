
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {scalar_t__ next_port_scan; } ;


 scalar_t__ jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int port_scan_ratelimit ;
 int zfcp_fc_port_scan_backoff () ;

__attribute__((used)) static void zfcp_fc_port_scan_time(struct zfcp_adapter *adapter)
{
 unsigned long interval = msecs_to_jiffies(port_scan_ratelimit);
 unsigned long backoff = msecs_to_jiffies(zfcp_fc_port_scan_backoff());

 adapter->next_port_scan = jiffies + interval + backoff;
}
