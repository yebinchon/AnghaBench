
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 scalar_t__ jiffies ;
 scalar_t__ next_heartbeat ;
 int timeout ;

__attribute__((used)) static int wdt_keepalive(void)
{

 next_heartbeat = jiffies + (timeout * HZ);
 return 0;
}
