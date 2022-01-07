
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_length; int accel; int visual; int type; int id; } ;
struct fb_info {TYPE_1__ fix; } ;


 int FB_ACCEL_SUN_BWTWO ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_MONO01 ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void bw2_init_fix(struct fb_info *info, int linebytes)
{
 strlcpy(info->fix.id, "bwtwo", sizeof(info->fix.id));

 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.visual = FB_VISUAL_MONO01;

 info->fix.line_length = linebytes;

 info->fix.accel = FB_ACCEL_SUN_BWTWO;
}
