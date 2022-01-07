
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int unsafe_bm; int bm; int unsafe; int safe; } ;
struct TYPE_7__ {int unsafe_bm; int bm; int unsafe; int safe; } ;
struct uwb_rsv_move {TYPE_4__ companion_mas; TYPE_1__ final_mas; } ;
struct uwb_rsv {int state; int needs_release_companion_mas; TYPE_3__* rc; TYPE_4__ mas; struct uwb_rsv_move mv; } ;
typedef enum uwb_rsv_state { ____Placeholder_uwb_rsv_state } uwb_rsv_state ;
struct TYPE_8__ {int dev; } ;
struct TYPE_9__ {TYPE_2__ uwb_dev; } ;


 int UWB_NUM_MAS ;
 int bitmap_andnot (int ,int ,int ,int ) ;
 int bitmap_copy (int ,int ,int ) ;
 int bitmap_or (int ,int ,int ,int ) ;
 int dev_err (int *,char*,int ,int) ;
 int uwb_drp_avail_release (TYPE_3__*,TYPE_4__*) ;
 int uwb_drp_avail_reserve (TYPE_3__*,TYPE_4__*) ;
 int uwb_rsv_callback (struct uwb_rsv*) ;
 int uwb_rsv_dump (char*,struct uwb_rsv*) ;
 int uwb_rsv_remove (struct uwb_rsv*) ;
 int uwb_rsv_state_str (int) ;
 int uwb_rsv_state_update (struct uwb_rsv*,int const) ;
 int uwb_rsv_stroke_timer (struct uwb_rsv*) ;

void uwb_rsv_set_state(struct uwb_rsv *rsv, enum uwb_rsv_state new_state)
{
 struct uwb_rsv_move *mv = &rsv->mv;

 if (rsv->state == new_state) {
  switch (rsv->state) {
  case 140:
  case 136:
  case 137:
  case 135:
  case 133:
  case 130:
  case 128:
  case 141:
   uwb_rsv_stroke_timer(rsv);
   break;
  default:


   break;
  }
  return;
 }

 uwb_rsv_dump("SC", rsv);

 switch (new_state) {
 case 141:
  uwb_rsv_state_update(rsv, 141);
  uwb_rsv_remove(rsv);
  uwb_rsv_callback(rsv);
  break;
 case 139:
  uwb_rsv_state_update(rsv, 139);
  break;
 case 134:
  uwb_rsv_state_update(rsv, 134);
  break;
 case 138:

  bitmap_andnot(rsv->mas.bm, rsv->mas.bm, mv->companion_mas.bm, UWB_NUM_MAS);
  uwb_rsv_state_update(rsv, 138);
  break;
 case 140:
  if (rsv->state == 138
      || rsv->state == 135) {
   uwb_drp_avail_release(rsv->rc, &mv->companion_mas);
   rsv->needs_release_companion_mas = 0;
  }
  uwb_drp_avail_reserve(rsv->rc, &rsv->mas);
  uwb_rsv_state_update(rsv, 140);
  uwb_rsv_callback(rsv);
  break;
 case 136:
  rsv->needs_release_companion_mas = 1;
  uwb_rsv_state_update(rsv, 136);
  break;
 case 137:
  rsv->needs_release_companion_mas = 0;
  uwb_drp_avail_reserve(rsv->rc, &mv->companion_mas);
  bitmap_or(rsv->mas.bm, rsv->mas.bm, mv->companion_mas.bm, UWB_NUM_MAS);
  rsv->mas.safe += mv->companion_mas.safe;
  rsv->mas.unsafe += mv->companion_mas.unsafe;
  uwb_rsv_state_update(rsv, 137);
  break;
 case 135:
  bitmap_andnot(mv->companion_mas.bm, rsv->mas.bm, mv->final_mas.bm, UWB_NUM_MAS);
  rsv->needs_release_companion_mas = 1;
  rsv->mas.safe = mv->final_mas.safe;
  rsv->mas.unsafe = mv->final_mas.unsafe;
  bitmap_copy(rsv->mas.bm, mv->final_mas.bm, UWB_NUM_MAS);
  bitmap_copy(rsv->mas.unsafe_bm, mv->final_mas.unsafe_bm, UWB_NUM_MAS);
  uwb_rsv_state_update(rsv, 135);
  break;
 case 133:
 case 128:
  rsv->needs_release_companion_mas = 0;
  uwb_drp_avail_reserve(rsv->rc, &rsv->mas);
  uwb_rsv_state_update(rsv, 133);
  uwb_rsv_callback(rsv);
  break;
 case 131:
  uwb_rsv_state_update(rsv, 131);
  break;
 case 132:
  uwb_rsv_state_update(rsv, 132);
  break;
 case 129:
  uwb_rsv_state_update(rsv, 129);
  break;
 case 130:
  rsv->needs_release_companion_mas = 1;
  uwb_drp_avail_reserve(rsv->rc, &mv->companion_mas);
  uwb_rsv_state_update(rsv, 130);
  break;
 default:
  dev_err(&rsv->rc->uwb_dev.dev, "unhandled state: %s (%d)\n",
   uwb_rsv_state_str(new_state), new_state);
 }
}
