
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeonfb_info {scalar_t__ asleep; } ;
struct fb_info {struct radeonfb_info* par; } ;


 int radeon_screen_blank (struct radeonfb_info*,int,int ) ;

__attribute__((used)) static int radeonfb_blank (int blank, struct fb_info *info)
{
        struct radeonfb_info *rinfo = info->par;

 if (rinfo->asleep)
  return 0;

 return radeon_screen_blank(rinfo, blank, 0);
}
