
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending; int local; int global; } ;
struct uwb_rc {TYPE_1__ drp_avail; } ;


 int UWB_NUM_MAS ;
 int bitmap_fill (int ,int ) ;

void uwb_drp_avail_init(struct uwb_rc *rc)
{
 bitmap_fill(rc->drp_avail.global, UWB_NUM_MAS);
 bitmap_fill(rc->drp_avail.local, UWB_NUM_MAS);
 bitmap_fill(rc->drp_avail.pending, UWB_NUM_MAS);
}
