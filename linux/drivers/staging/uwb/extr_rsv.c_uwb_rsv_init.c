
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int streams; } ;
struct TYPE_3__ {int can_reserve_extra_mases; int window; int timer; scalar_t__ total_expired; } ;
struct uwb_rc {TYPE_2__ uwb_dev; TYPE_1__ bow; int rsv_alien_bp_work; int rsv_update_work; int rsvs_lock; int rsvs_mutex; int cnflt_alien_list; int reservations; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int UWB_DRP_BACKOFF_WIN_MIN ;
 int UWB_NUM_STREAMS ;
 int bitmap_complement (int ,int ,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int uwb_rsv_alien_bp_work ;
 int uwb_rsv_backoff_win_timer ;
 int uwb_rsv_update_work ;

void uwb_rsv_init(struct uwb_rc *rc)
{
 INIT_LIST_HEAD(&rc->reservations);
 INIT_LIST_HEAD(&rc->cnflt_alien_list);
 mutex_init(&rc->rsvs_mutex);
 spin_lock_init(&rc->rsvs_lock);
 INIT_DELAYED_WORK(&rc->rsv_update_work, uwb_rsv_update_work);
 INIT_DELAYED_WORK(&rc->rsv_alien_bp_work, uwb_rsv_alien_bp_work);
 rc->bow.can_reserve_extra_mases = 1;
 rc->bow.total_expired = 0;
 rc->bow.window = UWB_DRP_BACKOFF_WIN_MIN >> 1;
 timer_setup(&rc->bow.timer, uwb_rsv_backoff_win_timer, 0);

 bitmap_complement(rc->uwb_dev.streams, rc->uwb_dev.streams, UWB_NUM_STREAMS);
}
