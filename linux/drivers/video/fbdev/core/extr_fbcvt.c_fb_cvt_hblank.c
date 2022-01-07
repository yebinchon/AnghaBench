
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_cvt_data {int flags; int active_pixels; } ;


 int FB_CVT_CELLSIZE ;
 int FB_CVT_FLAG_REDUCED_BLANK ;
 int FB_CVT_RB_HBLANK ;
 int fb_cvt_ideal_duty_cycle (struct fb_cvt_data*) ;

__attribute__((used)) static u32 fb_cvt_hblank(struct fb_cvt_data *cvt)
{
 u32 hblank = 0;

 if (cvt->flags & FB_CVT_FLAG_REDUCED_BLANK)
  hblank = FB_CVT_RB_HBLANK;
 else {
  u32 ideal_duty_cycle = fb_cvt_ideal_duty_cycle(cvt);
  u32 active_pixels = cvt->active_pixels;

  if (ideal_duty_cycle < 20000)
   hblank = (active_pixels * 20000)/
    (100000 - 20000);
  else {
   hblank = (active_pixels * ideal_duty_cycle)/
    (100000 - ideal_duty_cycle);
  }
 }

 hblank &= ~((2 * FB_CVT_CELLSIZE) - 1);

 return hblank;
}
