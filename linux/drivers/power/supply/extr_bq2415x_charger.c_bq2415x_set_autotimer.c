
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq2415x_device {int autotimer; int work; int * timer_error; } ;


 int BQ2415X_TIMER_RESET ;
 int BQ2415X_TIMER_TIMEOUT ;
 int HZ ;
 int bq2415x_exec_command (struct bq2415x_device*,int ) ;
 int bq2415x_timer_mutex ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static void bq2415x_set_autotimer(struct bq2415x_device *bq, int state)
{
 mutex_lock(&bq2415x_timer_mutex);

 if (bq->autotimer == state) {
  mutex_unlock(&bq2415x_timer_mutex);
  return;
 }

 bq->autotimer = state;

 if (state) {
  schedule_delayed_work(&bq->work, BQ2415X_TIMER_TIMEOUT * HZ);
  bq2415x_exec_command(bq, BQ2415X_TIMER_RESET);
  bq->timer_error = ((void*)0);
 } else {
  cancel_delayed_work_sync(&bq->work);
 }

 mutex_unlock(&bq2415x_timer_mutex);
}
