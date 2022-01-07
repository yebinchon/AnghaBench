
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int width; int height; } ;
struct vc_data {TYPE_1__ vc_font; } ;
struct TYPE_4__ {int size; int scan_align; int buf_align; } ;
struct fb_info {TYPE_2__ pixmap; } ;
struct fb_image {int fg_color; int bg_color; int dx; int dy; int height; int depth; int width; int * data; } ;


 int DIV_ROUND_UP (int,int) ;
 int GFP_ATOMIC ;
 int bit_putcs_aligned (struct vc_data*,struct fb_info*,unsigned short const*,int,int,int,int,int,struct fb_image*,int *,int *) ;
 int bit_putcs_unaligned (struct vc_data*,struct fb_info*,unsigned short const*,int,int,int,int,int,struct fb_image*,int *,int *) ;
 int * fb_get_buffer_offset (struct fb_info*,TYPE_2__*,int) ;
 int get_attribute (struct fb_info*,int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int scr_readw (unsigned short const*) ;
 scalar_t__ unlikely (int *) ;

__attribute__((used)) static void bit_putcs(struct vc_data *vc, struct fb_info *info,
        const unsigned short *s, int count, int yy, int xx,
        int fg, int bg)
{
 struct fb_image image;
 u32 width = DIV_ROUND_UP(vc->vc_font.width, 8);
 u32 cellsize = width * vc->vc_font.height;
 u32 maxcnt = info->pixmap.size/cellsize;
 u32 scan_align = info->pixmap.scan_align - 1;
 u32 buf_align = info->pixmap.buf_align - 1;
 u32 mod = vc->vc_font.width % 8, cnt, pitch, size;
 u32 attribute = get_attribute(info, scr_readw(s));
 u8 *dst, *buf = ((void*)0);

 image.fg_color = fg;
 image.bg_color = bg;
 image.dx = xx * vc->vc_font.width;
 image.dy = yy * vc->vc_font.height;
 image.height = vc->vc_font.height;
 image.depth = 1;

 if (attribute) {
  buf = kmalloc(cellsize, GFP_ATOMIC);
  if (!buf)
   return;
 }

 while (count) {
  if (count > maxcnt)
   cnt = maxcnt;
  else
   cnt = count;

  image.width = vc->vc_font.width * cnt;
  pitch = DIV_ROUND_UP(image.width, 8) + scan_align;
  pitch &= ~scan_align;
  size = pitch * image.height + buf_align;
  size &= ~buf_align;
  dst = fb_get_buffer_offset(info, &info->pixmap, size);
  image.data = dst;

  if (!mod)
   bit_putcs_aligned(vc, info, s, attribute, cnt, pitch,
       width, cellsize, &image, buf, dst);
  else
   bit_putcs_unaligned(vc, info, s, attribute, cnt,
         pitch, width, cellsize, &image,
         buf, dst);

  image.dx += cnt * vc->vc_font.width;
  count -= cnt;
  s += cnt;
 }




 if (unlikely(buf))
  kfree(buf);

}
