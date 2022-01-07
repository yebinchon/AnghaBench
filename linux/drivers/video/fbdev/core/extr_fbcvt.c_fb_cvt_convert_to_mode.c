
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int sync; int vsync_len; int lower_margin; int upper_margin; int hsync_len; int right_margin; int left_margin; int pixclock; int refresh; } ;
struct fb_cvt_data {int pixclock; int flags; int vsync; int v_front_porch; int v_back_porch; int hsync; int h_front_porch; int h_back_porch; int f_refresh; } ;


 int FB_CVT_FLAG_REDUCED_BLANK ;
 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int KHZ2PICOS (int) ;

__attribute__((used)) static void fb_cvt_convert_to_mode(struct fb_cvt_data *cvt,
       struct fb_videomode *mode)
{
 mode->refresh = cvt->f_refresh;
 mode->pixclock = KHZ2PICOS(cvt->pixclock/1000);
 mode->left_margin = cvt->h_back_porch;
 mode->right_margin = cvt->h_front_porch;
 mode->hsync_len = cvt->hsync;
 mode->upper_margin = cvt->v_back_porch;
 mode->lower_margin = cvt->v_front_porch;
 mode->vsync_len = cvt->vsync;

 mode->sync &= ~(FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT);

 if (cvt->flags & FB_CVT_FLAG_REDUCED_BLANK)
  mode->sync |= FB_SYNC_HOR_HIGH_ACT;
 else
  mode->sync |= FB_SYNC_VERT_HIGH_ACT;
}
