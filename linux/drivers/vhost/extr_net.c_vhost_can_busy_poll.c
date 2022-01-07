
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int busy_clock () ;
 int current ;
 int likely (int) ;
 int need_resched () ;
 int signal_pending (int ) ;
 int time_after (int ,unsigned long) ;

__attribute__((used)) static bool vhost_can_busy_poll(unsigned long endtime)
{
 return likely(!need_resched() && !time_after(busy_clock(), endtime) &&
        !signal_pending(current));
}
