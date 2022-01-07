
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {unsigned long next_port_scan; int scan_work; int work_queue; } ;


 unsigned long jiffies ;
 unsigned long min (unsigned long,unsigned long) ;
 unsigned long msecs_to_jiffies (scalar_t__) ;
 scalar_t__ port_scan_backoff ;
 scalar_t__ port_scan_ratelimit ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void zfcp_fc_port_scan(struct zfcp_adapter *adapter)
{
 unsigned long now = jiffies;
 unsigned long next = adapter->next_port_scan;
 unsigned long delay = 0, max;


 if (time_before(now, next)) {
  delay = next - now;

  max = msecs_to_jiffies(port_scan_ratelimit + port_scan_backoff);
  delay = min(delay, max);
 }

 queue_delayed_work(adapter->work_queue, &adapter->scan_work, delay);
}
