
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i810fb_par {int dummy; } ;
struct fb_info {struct i810fb_par* par; } ;


 int BLIT ;
 int DYN_COLOR_EN ;
 scalar_t__ IRING_PAD ;
 int PUT_RING (int) ;
 int SOURCE_COPY_BLIT ;
 scalar_t__ begin_iring (struct fb_info*,scalar_t__) ;
 int end_iring (struct i810fb_par*) ;

__attribute__((used)) static inline void source_copy_blit(int dwidth, int dheight, int dpitch,
        int xdir, int src, int dest, int rop,
        int blit_bpp, struct fb_info *info)
{
 struct i810fb_par *par = info->par;

 if (begin_iring(info, 24 + IRING_PAD)) return;

 PUT_RING(BLIT | SOURCE_COPY_BLIT | 4);
 PUT_RING(xdir | rop << 16 | dpitch | DYN_COLOR_EN | blit_bpp);
 PUT_RING(dheight << 16 | dwidth);
 PUT_RING(dest);
 PUT_RING(dpitch);
 PUT_RING(src);

 end_iring(par);
}
