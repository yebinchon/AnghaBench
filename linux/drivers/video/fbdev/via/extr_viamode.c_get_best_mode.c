
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int xres; int yres; scalar_t__ refresh; } ;


 scalar_t__ abs (scalar_t__) ;

__attribute__((used)) static const struct fb_videomode *get_best_mode(
 const struct fb_videomode *modes, int n,
 int hres, int vres, int refresh)
{
 const struct fb_videomode *best = ((void*)0);
 int i;

 for (i = 0; i < n; i++) {
  if (modes[i].xres != hres || modes[i].yres != vres)
   continue;

  if (!best || abs(modes[i].refresh - refresh) <
   abs(best->refresh - refresh))
   best = &modes[i];
 }

 return best;
}
