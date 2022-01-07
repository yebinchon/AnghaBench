
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bq24257_state {scalar_t__ status; scalar_t__ fault; scalar_t__ power_good; } ;
struct TYPE_2__ {scalar_t__ status; scalar_t__ fault; scalar_t__ power_good; } ;
struct bq24257_device {int lock; TYPE_1__ state; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool bq24257_state_changed(struct bq24257_device *bq,
      struct bq24257_state *new_state)
{
 int ret;

 mutex_lock(&bq->lock);
 ret = (bq->state.status != new_state->status ||
        bq->state.fault != new_state->fault ||
        bq->state.power_good != new_state->power_good);
 mutex_unlock(&bq->lock);

 return ret;
}
