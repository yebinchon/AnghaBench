
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* int_ctrl; } ;
struct TYPE_3__ {int (* enable_plane ) (int ,int ) ;} ;


 int OMAPFB_PLANE_GFX ;
 TYPE_2__ hwa742 ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void send_frame_complete(void *data)
{
 hwa742.int_ctrl->enable_plane(OMAPFB_PLANE_GFX, 0);
}
