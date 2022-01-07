
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcx_par {scalar_t__ lowdepth; } ;
struct TYPE_2__ {int line_length; int accel; int visual; int type; int id; } ;
struct fb_info {TYPE_1__ fix; scalar_t__ par; } ;


 int FB_ACCEL_SUN_TCX ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
tcx_init_fix(struct fb_info *info, int linebytes)
{
 struct tcx_par *par = (struct tcx_par *)info->par;
 const char *tcx_name;

 if (par->lowdepth)
  tcx_name = "TCX8";
 else
  tcx_name = "TCX24";

 strlcpy(info->fix.id, tcx_name, sizeof(info->fix.id));

 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.visual = FB_VISUAL_PSEUDOCOLOR;

 info->fix.line_length = linebytes;

 info->fix.accel = FB_ACCEL_SUN_TCX;
}
