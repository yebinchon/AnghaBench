
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i810fb_par {int dummy; } ;
struct fb_info {struct i810fb_par* par; } ;


 int BLIT ;
 int DYN_COLOR_EN ;
 scalar_t__ IRING_PAD ;
 int MONO_SOURCE_COPY_IMMEDIATE ;
 int PUT_RING (int) ;
 scalar_t__ begin_iring (struct fb_info*,scalar_t__) ;
 int end_iring (struct i810fb_par*) ;

__attribute__((used)) static inline void mono_src_copy_imm_blit(int dwidth, int dheight, int dpitch,
       int dsize, int blit_bpp, int rop,
       int dest, const u32 *src, int bg,
       int fg, struct fb_info *info)
{
 struct i810fb_par *par = info->par;

 if (begin_iring(info, 24 + (dsize << 2) + IRING_PAD)) return;

 PUT_RING(BLIT | MONO_SOURCE_COPY_IMMEDIATE | (4 + dsize));
 PUT_RING(DYN_COLOR_EN | blit_bpp | rop << 16 | dpitch);
 PUT_RING(dheight << 16 | dwidth);
 PUT_RING(dest);
 PUT_RING(bg);
 PUT_RING(fg);
 while (dsize--)
  PUT_RING(*src++);

 end_iring(par);
}
