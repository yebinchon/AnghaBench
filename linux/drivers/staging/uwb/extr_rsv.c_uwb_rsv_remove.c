
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int dev; } ;
struct TYPE_3__ {int companion_mas; } ;
struct uwb_rsv {scalar_t__ state; int rc_node; TYPE_2__ target; int owner; int mas; int rc; TYPE_1__ mv; scalar_t__ needs_release_companion_mas; } ;


 scalar_t__ UWB_RSV_STATE_NONE ;
 scalar_t__ UWB_RSV_TARGET_DEV ;
 int list_del_init (int *) ;
 int uwb_dev_put (int ) ;
 int uwb_drp_avail_release (int ,int *) ;
 int uwb_rsv_dump (char*,struct uwb_rsv*) ;
 scalar_t__ uwb_rsv_is_owner (struct uwb_rsv*) ;
 int uwb_rsv_put (struct uwb_rsv*) ;
 int uwb_rsv_put_stream (struct uwb_rsv*) ;
 int uwb_rsv_set_state (struct uwb_rsv*,scalar_t__) ;

void uwb_rsv_remove(struct uwb_rsv *rsv)
{
 uwb_rsv_dump("RM", rsv);

 if (rsv->state != UWB_RSV_STATE_NONE)
  uwb_rsv_set_state(rsv, UWB_RSV_STATE_NONE);

 if (rsv->needs_release_companion_mas)
  uwb_drp_avail_release(rsv->rc, &rsv->mv.companion_mas);
 uwb_drp_avail_release(rsv->rc, &rsv->mas);

 if (uwb_rsv_is_owner(rsv))
  uwb_rsv_put_stream(rsv);

 uwb_dev_put(rsv->owner);
 if (rsv->target.type == UWB_RSV_TARGET_DEV)
  uwb_dev_put(rsv->target.dev);

 list_del_init(&rsv->rc_node);
 uwb_rsv_put(rsv);
}
