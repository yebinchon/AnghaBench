
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_tilecursor {int dummy; } ;
struct fb_info {struct arkfb_info* par; } ;
struct TYPE_2__ {int vgabase; } ;
struct arkfb_info {TYPE_1__ state; } ;


 int svga_tilecursor (int ,struct fb_info*,struct fb_tilecursor*) ;

__attribute__((used)) static void arkfb_tilecursor(struct fb_info *info, struct fb_tilecursor *cursor)
{
 struct arkfb_info *par = info->par;

 svga_tilecursor(par->state.vgabase, info, cursor);
}
