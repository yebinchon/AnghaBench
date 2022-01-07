
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bm; } ;
struct uwb_rsv_move {TYPE_1__ companion_mas; } ;
struct TYPE_4__ {int bm; } ;
struct uwb_rsv {int state; TYPE_2__ mas; struct uwb_rsv_move mv; } ;
struct uwb_mas_bm {int bm; } ;


 int UWB_NUM_MAS ;







 int bitmap_equal (int ,int ,int ) ;
 int uwb_rsv_set_state (struct uwb_rsv*,int const) ;

__attribute__((used)) static void uwb_drp_process_owner_accepted(struct uwb_rsv *rsv,
      struct uwb_mas_bm *mas)
{
 struct uwb_rsv_move *mv = &rsv->mv;

 switch (rsv->state) {
 case 128:
 case 133:
 case 134:
  uwb_rsv_set_state(rsv, 134);
  break;
 case 132:
  if (bitmap_equal(mas->bm, rsv->mas.bm, UWB_NUM_MAS))
   uwb_rsv_set_state(rsv, 134);
  else
   uwb_rsv_set_state(rsv, 132);
  break;

 case 129:
  if (bitmap_equal(mas->bm, rsv->mas.bm, UWB_NUM_MAS))
   uwb_rsv_set_state(rsv, 134);
  else
   uwb_rsv_set_state(rsv, 129);
  break;
 case 130:
  if (bitmap_equal(mas->bm, mv->companion_mas.bm, UWB_NUM_MAS)) {

   uwb_rsv_set_state(rsv, 131);
  } else {
   uwb_rsv_set_state(rsv, 130);
  }
  break;
 case 131:
  if (bitmap_equal(mas->bm, rsv->mas.bm, UWB_NUM_MAS))
   uwb_rsv_set_state(rsv, 129);
  else
   uwb_rsv_set_state(rsv, 131);
  break;
 default:
  break;
 }
}
