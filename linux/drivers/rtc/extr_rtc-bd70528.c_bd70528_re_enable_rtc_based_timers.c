
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd70528_rtc {int dummy; } ;


 int bd70528_set_rtc_based_timers (struct bd70528_rtc*,int,int *) ;

__attribute__((used)) static int bd70528_re_enable_rtc_based_timers(struct bd70528_rtc *r,
           int old_state)
{
 return bd70528_set_rtc_based_timers(r, old_state, ((void*)0));
}
