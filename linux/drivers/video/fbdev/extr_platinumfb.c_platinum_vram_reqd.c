
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hres; int vres; } ;


 int CMODE_8 ;
 int VMODE_832_624_75 ;
 TYPE_1__* vmode_attrs ;

__attribute__((used)) static inline int platinum_vram_reqd(int video_mode, int color_mode)
{
 int baseval = vmode_attrs[video_mode-1].hres * (1<<color_mode);

 if ((video_mode == VMODE_832_624_75) && (color_mode > CMODE_8))
  baseval += 0x10;
 else
  baseval += 0x20;

 return vmode_attrs[video_mode-1].vres * baseval + 0x1000;
}
