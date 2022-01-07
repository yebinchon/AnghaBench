
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_length; int accel; int visual; int type; int id; } ;
struct fb_info {TYPE_1__ fix; } ;
struct device_node {int dummy; } ;


 int FB_ACCEL_SUN_CG14 ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int snprintf (int ,int,char*,struct device_node*) ;

__attribute__((used)) static void cg14_init_fix(struct fb_info *info, int linebytes,
     struct device_node *dp)
{
 snprintf(info->fix.id, sizeof(info->fix.id), "%pOFn", dp);

 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.visual = FB_VISUAL_PSEUDOCOLOR;

 info->fix.line_length = linebytes;

 info->fix.accel = FB_ACCEL_SUN_CG14;
}
