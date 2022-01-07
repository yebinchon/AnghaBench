
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_timming {scalar_t__ crtc; int mnp; int pixclock; } ;
struct matrox_fb_info {int dummy; } ;


 scalar_t__ MATROXFB_SRC_CRTC1 ;
 int M_PIXEL_PLL_C ;
 int M_VIDEO_PLL ;
 int g450_mnp2f (struct matrox_fb_info*,int ) ;
 int matroxfb_g450_setclk (struct matrox_fb_info*,int ,int ) ;

__attribute__((used)) static int g450_dvi_compute(void* md, struct my_timming* mt) {
 struct matrox_fb_info *minfo = md;

 if (mt->mnp < 0) {
  mt->mnp = matroxfb_g450_setclk(minfo, mt->pixclock, (mt->crtc == MATROXFB_SRC_CRTC1) ? M_PIXEL_PLL_C : M_VIDEO_PLL);
  mt->pixclock = g450_mnp2f(minfo, mt->mnp);
 }
 return 0;
}
