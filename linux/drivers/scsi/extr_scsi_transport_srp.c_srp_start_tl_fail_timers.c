
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rport {int mutex; } ;


 int __srp_start_tl_fail_timers (struct srp_rport*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void srp_start_tl_fail_timers(struct srp_rport *rport)
{
 mutex_lock(&rport->mutex);
 __srp_start_tl_fail_timers(rport);
 mutex_unlock(&rport->mutex);
}
