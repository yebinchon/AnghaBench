
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq25890_state {scalar_t__ chrg_status; scalar_t__ chrg_fault; scalar_t__ online; scalar_t__ bat_fault; scalar_t__ boost_fault; scalar_t__ vsys_status; } ;
struct bq25890_device {int lock; struct bq25890_state state; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool bq25890_state_changed(struct bq25890_device *bq,
      struct bq25890_state *new_state)
{
 struct bq25890_state old_state;

 mutex_lock(&bq->lock);
 old_state = bq->state;
 mutex_unlock(&bq->lock);

 return (old_state.chrg_status != new_state->chrg_status ||
  old_state.chrg_fault != new_state->chrg_fault ||
  old_state.online != new_state->online ||
  old_state.bat_fault != new_state->bat_fault ||
  old_state.boost_fault != new_state->boost_fault ||
  old_state.vsys_status != new_state->vsys_status);
}
