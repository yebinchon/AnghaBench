
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int visual; } ;
struct fb_info {int cmap; TYPE_1__ fix; } ;







 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_STATIC_PSEUDOCOLOR ;
 int fb_set_cmap (int *,struct fb_info*) ;
 int vt8500lcd_setcolreg (int,int ,int ,int ,int ,struct fb_info*) ;

__attribute__((used)) static int vt8500lcd_blank(int blank, struct fb_info *info)
{
 int i;

 switch (blank) {
 case 130:
 case 128:
 case 132:
 case 131:
  if (info->fix.visual == FB_VISUAL_PSEUDOCOLOR ||
      info->fix.visual == FB_VISUAL_STATIC_PSEUDOCOLOR)
   for (i = 0; i < 256; i++)
    vt8500lcd_setcolreg(i, 0, 0, 0, 0, info);
 case 129:
  if (info->fix.visual == FB_VISUAL_PSEUDOCOLOR ||
      info->fix.visual == FB_VISUAL_STATIC_PSEUDOCOLOR)
   fb_set_cmap(&info->cmap, info);
 }
 return 0;
}
