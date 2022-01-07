
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int vc_cols; int vc_x; scalar_t__ vc_need_wrap; int vc_y; TYPE_1__* vc_sw; int vc_video_erase_char; scalar_t__ vc_pos; } ;
struct TYPE_2__ {int (* con_clear ) (struct vc_data*,int ,int,int,int) ;} ;


 scalar_t__ con_should_update (struct vc_data*) ;
 int scr_memsetw (unsigned short*,int ,int) ;
 int stub1 (struct vc_data*,int ,int,int,int) ;
 int vc_uniscr_clear_line (struct vc_data*,int,int) ;

__attribute__((used)) static void csi_X(struct vc_data *vc, int vpar)
{
 int count;

 if (!vpar)
  vpar++;
 count = (vpar > vc->vc_cols - vc->vc_x) ? (vc->vc_cols - vc->vc_x) : vpar;

 vc_uniscr_clear_line(vc, vc->vc_x, count);
 scr_memsetw((unsigned short *)vc->vc_pos, vc->vc_video_erase_char, 2 * count);
 if (con_should_update(vc))
  vc->vc_sw->con_clear(vc, vc->vc_y, vc->vc_x, 1, count);
 vc->vc_need_wrap = 0;
}
