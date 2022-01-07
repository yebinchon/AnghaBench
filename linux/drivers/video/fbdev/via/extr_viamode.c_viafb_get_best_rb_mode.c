
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct fb_videomode const* get_best_mode (int ,int ,int,int,int) ;
 int viafb_rb_modes ;

const struct fb_videomode *viafb_get_best_rb_mode(int hres, int vres,
 int refresh)
{
 return get_best_mode(viafb_rb_modes, ARRAY_SIZE(viafb_rb_modes),
  hres, vres, refresh);
}
