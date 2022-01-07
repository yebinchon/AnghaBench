
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bm; } ;
struct uwb_rsv {TYPE_3__* rc; TYPE_1__ mas; } ;
struct uwb_mas_bm {int bm; } ;
struct TYPE_5__ {int bm; } ;
struct TYPE_6__ {TYPE_2__ cnflt_alien_bitmap; } ;


 int UWB_NUM_MAS ;
 int bitmap_andnot (int ,int ,int ,int ) ;
 int bitmap_zero (int ,int ) ;

void uwb_rsv_get_usable_mas(struct uwb_rsv *rsv, struct uwb_mas_bm *mas)
{
 bitmap_zero(mas->bm, UWB_NUM_MAS);
 bitmap_andnot(mas->bm, rsv->mas.bm, rsv->rc->cnflt_alien_bitmap.bm, UWB_NUM_MAS);
}
