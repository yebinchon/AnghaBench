
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ie_valid; int pending; int local; } ;
struct uwb_rc {TYPE_1__ drp_avail; } ;
struct uwb_mas_bm {int bm; } ;


 int UWB_NUM_MAS ;
 int bitmap_or (int ,int ,int ,int ) ;
 int uwb_rsv_handle_drp_avail_change (struct uwb_rc*) ;

void uwb_drp_avail_release(struct uwb_rc *rc, struct uwb_mas_bm *mas)
{
 bitmap_or(rc->drp_avail.local, rc->drp_avail.local, mas->bm, UWB_NUM_MAS);
 bitmap_or(rc->drp_avail.pending, rc->drp_avail.pending, mas->bm, UWB_NUM_MAS);
 rc->drp_avail.ie_valid = 0;
 uwb_rsv_handle_drp_avail_change(rc);
}
