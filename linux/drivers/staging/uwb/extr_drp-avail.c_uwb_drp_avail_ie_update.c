
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int element_id; } ;
struct TYPE_5__ {int bmp; TYPE_1__ hdr; } ;
struct TYPE_6__ {int ie_valid; TYPE_2__ ie; int local; int global; } ;
struct uwb_rc {TYPE_3__ drp_avail; } ;
struct uwb_mas_bm {int bm; } ;


 int UWB_IE_DRP_AVAILABILITY ;
 int UWB_NUM_MAS ;
 int bitmap_and (int ,int ,int ,int) ;
 int uwb_mas_bm_copy_le (int ,struct uwb_mas_bm*) ;

void uwb_drp_avail_ie_update(struct uwb_rc *rc)
{
 struct uwb_mas_bm avail;

 bitmap_and(avail.bm, rc->drp_avail.global, rc->drp_avail.local, UWB_NUM_MAS);

 rc->drp_avail.ie.hdr.element_id = UWB_IE_DRP_AVAILABILITY;
 rc->drp_avail.ie.hdr.length = UWB_NUM_MAS / 8;
 uwb_mas_bm_copy_le(rc->drp_avail.ie.bmp, &avail);
 rc->drp_avail.ie_valid = 1;
}
