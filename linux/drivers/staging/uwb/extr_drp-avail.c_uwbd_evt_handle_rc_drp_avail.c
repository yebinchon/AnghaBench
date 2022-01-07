
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ie_valid; int global; } ;
struct uwb_rc {int rsvs_mutex; TYPE_1__ drp_avail; } ;
struct uwb_event {struct uwb_rc* rc; } ;


 int DECLARE_BITMAP (int ,int ) ;
 int UWB_NUM_MAS ;
 int bitmap_copy (int ,int ,int ) ;
 int bmp ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_rsv_handle_drp_avail_change (struct uwb_rc*) ;
 int uwb_rsv_sched_update (struct uwb_rc*) ;
 int uwbd_evt_get_drp_avail (struct uwb_event*,int ) ;

int uwbd_evt_handle_rc_drp_avail(struct uwb_event *evt)
{
 int result;
 struct uwb_rc *rc = evt->rc;
 DECLARE_BITMAP(bmp, UWB_NUM_MAS);

 result = uwbd_evt_get_drp_avail(evt, bmp);
 if (result < 0)
  return result;

 mutex_lock(&rc->rsvs_mutex);
 bitmap_copy(rc->drp_avail.global, bmp, UWB_NUM_MAS);
 rc->drp_avail.ie_valid = 0;
 uwb_rsv_handle_drp_avail_change(rc);
 mutex_unlock(&rc->rsvs_mutex);

 uwb_rsv_sched_update(rc);

 return 0;
}
