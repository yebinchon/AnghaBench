
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int height; int width; } ;
struct vc_data {TYPE_1__ vc_font; scalar_t__ vc_hi_font_mask; } ;
struct fbcon_ops {int * fontbuffer; } ;
struct fb_info {TYPE_2__* fbops; struct fbcon_ops* fbcon_par; } ;
struct fb_image {int dummy; } ;
struct TYPE_4__ {int (* fb_imageblit ) (struct fb_info*,struct fb_image*) ;} ;


 int __fb_pad_aligned_buffer (int *,int,int *,int,int) ;
 int cw_update_attr (int *,int *,int,struct vc_data*) ;
 int fb_pad_aligned_buffer (int *,int,int *,int,int) ;
 scalar_t__ likely (int) ;
 int scr_readw (int ) ;
 int stub1 (struct fb_info*,struct fb_image*) ;

__attribute__((used)) static inline void cw_putcs_aligned(struct vc_data *vc, struct fb_info *info,
        const u16 *s, u32 attr, u32 cnt,
        u32 d_pitch, u32 s_pitch, u32 cellsize,
        struct fb_image *image, u8 *buf, u8 *dst)
{
 struct fbcon_ops *ops = info->fbcon_par;
 u16 charmask = vc->vc_hi_font_mask ? 0x1ff : 0xff;
 u32 idx = (vc->vc_font.height + 7) >> 3;
 u8 *src;

 while (cnt--) {
  src = ops->fontbuffer + (scr_readw(s++) & charmask)*cellsize;

  if (attr) {
   cw_update_attr(buf, src, attr, vc);
   src = buf;
  }

  if (likely(idx == 1))
   __fb_pad_aligned_buffer(dst, d_pitch, src, idx,
      vc->vc_font.width);
  else
   fb_pad_aligned_buffer(dst, d_pitch, src, idx,
           vc->vc_font.width);

  dst += d_pitch * vc->vc_font.width;
 }

 info->fbops->fb_imageblit(info, image);
}
