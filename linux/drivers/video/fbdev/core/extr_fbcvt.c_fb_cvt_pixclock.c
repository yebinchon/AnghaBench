
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_cvt_data {int flags; int f_refresh; int vtotal; int htotal; int hperiod; } ;


 int FB_CVT_FLAG_REDUCED_BLANK ;

__attribute__((used)) static u32 fb_cvt_pixclock(struct fb_cvt_data *cvt)
{
 u32 pixclock;

 if (cvt->flags & FB_CVT_FLAG_REDUCED_BLANK)
  pixclock = (cvt->f_refresh * cvt->vtotal * cvt->htotal)/1000;
 else
  pixclock = (cvt->htotal * 1000000)/cvt->hperiod;

 pixclock /= 250;
 pixclock *= 250;
 pixclock *= 1000;

 return pixclock;
}
