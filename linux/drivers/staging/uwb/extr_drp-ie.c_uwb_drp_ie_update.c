
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int unsafe; } ;
struct uwb_rsv_move {TYPE_4__ companion_mas; struct uwb_ie_drp* companion_drp_ie; } ;
struct TYPE_6__ {int type; int devaddr; TYPE_1__* dev; } ;
struct uwb_rsv {scalar_t__ state; int ie_valid; struct uwb_ie_drp* drp_ie; struct uwb_rsv_move mv; TYPE_4__ mas; TYPE_3__* owner; TYPE_2__ target; int type; int stream; int tiebreaker; } ;
struct uwb_ie_drp {int dev_addr; } ;
struct TYPE_7__ {int dev_addr; } ;
struct TYPE_5__ {int dev_addr; } ;


 int ENOMEM ;
 scalar_t__ UWB_RSV_STATE_NONE ;


 int kfree (struct uwb_ie_drp*) ;
 int memcpy (struct uwb_ie_drp*,struct uwb_ie_drp*,int) ;
 void* uwb_drp_ie_alloc () ;
 int uwb_drp_ie_from_bm (struct uwb_ie_drp*,TYPE_4__*) ;
 int uwb_ie_drp_set_owner (struct uwb_ie_drp*,scalar_t__) ;
 int uwb_ie_drp_set_reason_code (struct uwb_ie_drp*,int ) ;
 int uwb_ie_drp_set_status (struct uwb_ie_drp*,int ) ;
 int uwb_ie_drp_set_stream_index (struct uwb_ie_drp*,int ) ;
 int uwb_ie_drp_set_tiebreaker (struct uwb_ie_drp*,int ) ;
 int uwb_ie_drp_set_type (struct uwb_ie_drp*,int ) ;
 int uwb_ie_drp_set_unsafe (struct uwb_ie_drp*,int) ;
 int uwb_rsv_companion_reason_code (struct uwb_rsv*) ;
 int uwb_rsv_companion_status (struct uwb_rsv*) ;
 scalar_t__ uwb_rsv_has_two_drp_ies (struct uwb_rsv*) ;
 scalar_t__ uwb_rsv_is_owner (struct uwb_rsv*) ;
 int uwb_rsv_reason_code (struct uwb_rsv*) ;
 int uwb_rsv_status (struct uwb_rsv*) ;

int uwb_drp_ie_update(struct uwb_rsv *rsv)
{
 struct uwb_ie_drp *drp_ie;
 struct uwb_rsv_move *mv;
 int unsafe;

 if (rsv->state == UWB_RSV_STATE_NONE) {
  kfree(rsv->drp_ie);
  rsv->drp_ie = ((void*)0);
  return 0;
 }

 unsafe = rsv->mas.unsafe ? 1 : 0;

 if (rsv->drp_ie == ((void*)0)) {
  rsv->drp_ie = uwb_drp_ie_alloc();
  if (rsv->drp_ie == ((void*)0))
   return -ENOMEM;
 }
 drp_ie = rsv->drp_ie;

 uwb_ie_drp_set_unsafe(drp_ie, unsafe);
 uwb_ie_drp_set_tiebreaker(drp_ie, rsv->tiebreaker);
 uwb_ie_drp_set_owner(drp_ie, uwb_rsv_is_owner(rsv));
 uwb_ie_drp_set_status(drp_ie, uwb_rsv_status(rsv));
 uwb_ie_drp_set_reason_code(drp_ie, uwb_rsv_reason_code(rsv));
 uwb_ie_drp_set_stream_index(drp_ie, rsv->stream);
 uwb_ie_drp_set_type(drp_ie, rsv->type);

 if (uwb_rsv_is_owner(rsv)) {
  switch (rsv->target.type) {
  case 129:
   drp_ie->dev_addr = rsv->target.dev->dev_addr;
   break;
  case 128:
   drp_ie->dev_addr = rsv->target.devaddr;
   break;
  }
 } else
  drp_ie->dev_addr = rsv->owner->dev_addr;

 uwb_drp_ie_from_bm(drp_ie, &rsv->mas);

 if (uwb_rsv_has_two_drp_ies(rsv)) {
  mv = &rsv->mv;
  if (mv->companion_drp_ie == ((void*)0)) {
   mv->companion_drp_ie = uwb_drp_ie_alloc();
   if (mv->companion_drp_ie == ((void*)0))
    return -ENOMEM;
  }
  drp_ie = mv->companion_drp_ie;


  memcpy(drp_ie, rsv->drp_ie, sizeof(struct uwb_ie_drp));



  uwb_ie_drp_set_unsafe(drp_ie, 1);
  uwb_ie_drp_set_status(drp_ie, uwb_rsv_companion_status(rsv));
  uwb_ie_drp_set_reason_code(drp_ie, uwb_rsv_companion_reason_code(rsv));

  uwb_drp_ie_from_bm(drp_ie, &mv->companion_mas);
 }

 rsv->ie_valid = 1;
 return 0;
}
