
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct videomode {int flags; int vsync_len; int vback_porch; int vfront_porch; int vactive; int hsync_len; int hback_porch; int hfront_porch; int hactive; int pixelclock; } ;
struct TYPE_18__ {int typ; } ;
struct TYPE_17__ {int typ; } ;
struct TYPE_16__ {int typ; } ;
struct TYPE_15__ {int typ; } ;
struct TYPE_14__ {int typ; } ;
struct TYPE_13__ {int typ; } ;
struct TYPE_12__ {int typ; } ;
struct TYPE_11__ {int typ; } ;
struct TYPE_10__ {int typ; } ;
struct display_timing {int flags; TYPE_9__ vsync_len; TYPE_8__ vback_porch; TYPE_7__ vfront_porch; TYPE_6__ vactive; TYPE_5__ hsync_len; TYPE_4__ hback_porch; TYPE_3__ hfront_porch; TYPE_2__ hactive; TYPE_1__ pixelclock; } ;



void videomode_from_timing(const struct display_timing *dt,
     struct videomode *vm)
{
 vm->pixelclock = dt->pixelclock.typ;
 vm->hactive = dt->hactive.typ;
 vm->hfront_porch = dt->hfront_porch.typ;
 vm->hback_porch = dt->hback_porch.typ;
 vm->hsync_len = dt->hsync_len.typ;

 vm->vactive = dt->vactive.typ;
 vm->vfront_porch = dt->vfront_porch.typ;
 vm->vback_porch = dt->vback_porch.typ;
 vm->vsync_len = dt->vsync_len.typ;

 vm->flags = dt->flags;
}
