
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {scalar_t__ state; int timer; scalar_t__ is_multicast; } ;


 int UWB_MAX_LOST_BEACONS ;
 scalar_t__ UWB_RSV_STATE_NONE ;
 scalar_t__ UWB_RSV_STATE_O_ESTABLISHED ;
 scalar_t__ UWB_RSV_STATE_O_INITIATED ;
 scalar_t__ UWB_RSV_STATE_O_MOVE_COMBINING ;
 scalar_t__ UWB_RSV_STATE_O_MOVE_EXPANDING ;
 scalar_t__ UWB_RSV_STATE_O_MOVE_REDUCING ;
 int UWB_SUPERFRAME_LENGTH_US ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ usecs_to_jiffies (unsigned int) ;

__attribute__((used)) static void uwb_rsv_stroke_timer(struct uwb_rsv *rsv)
{
 int sframes = UWB_MAX_LOST_BEACONS;






 if (rsv->state == UWB_RSV_STATE_NONE) {
  sframes = 0;
 } else if (rsv->is_multicast) {
  if (rsv->state == UWB_RSV_STATE_O_INITIATED
      || rsv->state == UWB_RSV_STATE_O_MOVE_EXPANDING
      || rsv->state == UWB_RSV_STATE_O_MOVE_COMBINING
      || rsv->state == UWB_RSV_STATE_O_MOVE_REDUCING)
   sframes = 1;
  if (rsv->state == UWB_RSV_STATE_O_ESTABLISHED)
   sframes = 0;

 }

 if (sframes > 0) {




  unsigned timeout_us = (sframes + 2) * UWB_SUPERFRAME_LENGTH_US;
  mod_timer(&rsv->timer, jiffies + usecs_to_jiffies(timeout_us));
 } else
  del_timer(&rsv->timer);
}
