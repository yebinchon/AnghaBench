
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rport {scalar_t__ state; int dev_loss_work; int fast_io_fail_work; int reconnect_work; int mutex; } ;


 scalar_t__ SRP_RPORT_BLOCKED ;
 int SRP_RPORT_LOST ;
 int __rport_fail_io_fast (struct srp_rport*) ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int srp_rport_set_state (struct srp_rport*,int ) ;

void srp_stop_rport_timers(struct srp_rport *rport)
{
 mutex_lock(&rport->mutex);
 if (rport->state == SRP_RPORT_BLOCKED)
  __rport_fail_io_fast(rport);
 srp_rport_set_state(rport, SRP_RPORT_LOST);
 mutex_unlock(&rport->mutex);

 cancel_delayed_work_sync(&rport->reconnect_work);
 cancel_delayed_work_sync(&rport->fast_io_fail_work);
 cancel_delayed_work_sync(&rport->dev_loss_work);
}
