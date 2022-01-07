
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_10__ {int (* ShowHideCursor ) (TYPE_4__*,int) ;int (* LockUnlock ) (TYPE_4__*,int ) ;int PRAMDAC; int CURSOR; } ;
struct riva_par {TYPE_4__ riva; scalar_t__ cursor_reset; } ;
struct TYPE_8__ {int* red; int* green; int* blue; } ;
struct TYPE_7__ {int yoffset; int xoffset; } ;
struct fb_info {TYPE_2__ cmap; TYPE_1__ var; struct riva_par* par; } ;
struct TYPE_9__ {int width; int height; int dy; int dx; int bg_color; int fg_color; scalar_t__ data; } ;
struct fb_cursor {int set; int rop; scalar_t__ enable; TYPE_3__ image; scalar_t__ mask; } ;


 int ENXIO ;
 int FB_CUR_SETALL ;
 int FB_CUR_SETCMAP ;
 int FB_CUR_SETIMAGE ;
 int FB_CUR_SETPOS ;
 int FB_CUR_SETSHAPE ;
 int FB_CUR_SETSIZE ;
 int GFP_ATOMIC ;
 int MAX_CURS ;
 int NV_WR32 (int ,int,int) ;


 int fb_pad_aligned_buffer (int*,int,int*,int,int) ;
 int kfree (int*) ;
 int* kmalloc_array (int,int,int ) ;
 int memset_io (int ,int ,int) ;
 int rivafb_load_cursor_image (struct riva_par*,int*,int,int,int,int) ;
 int stub1 (TYPE_4__*,int) ;
 int stub2 (TYPE_4__*,int ) ;
 int stub3 (TYPE_4__*,int) ;

__attribute__((used)) static int rivafb_cursor(struct fb_info *info, struct fb_cursor *cursor)
{
 struct riva_par *par = info->par;
 u8 data[MAX_CURS * MAX_CURS/8];
 int i, set = cursor->set;
 u16 fg, bg;

 if (cursor->image.width > MAX_CURS || cursor->image.height > MAX_CURS)
  return -ENXIO;

 par->riva.ShowHideCursor(&par->riva, 0);

 if (par->cursor_reset) {
  set = FB_CUR_SETALL;
  par->cursor_reset = 0;
 }

 if (set & FB_CUR_SETSIZE)
  memset_io(par->riva.CURSOR, 0, MAX_CURS * MAX_CURS * 2);

 if (set & FB_CUR_SETPOS) {
  u32 xx, yy, temp;

  yy = cursor->image.dy - info->var.yoffset;
  xx = cursor->image.dx - info->var.xoffset;
  temp = xx & 0xFFFF;
  temp |= yy << 16;

  NV_WR32(par->riva.PRAMDAC, 0x0000300, temp);
 }


 if (set & (FB_CUR_SETSHAPE | FB_CUR_SETCMAP | FB_CUR_SETIMAGE)) {
  u32 bg_idx = cursor->image.bg_color;
  u32 fg_idx = cursor->image.fg_color;
  u32 s_pitch = (cursor->image.width+7) >> 3;
  u32 d_pitch = MAX_CURS/8;
  u8 *dat = (u8 *) cursor->image.data;
  u8 *msk = (u8 *) cursor->mask;
  u8 *src;

  src = kmalloc_array(s_pitch, cursor->image.height, GFP_ATOMIC);

  if (src) {
   switch (cursor->rop) {
   case 128:
    for (i = 0; i < s_pitch * cursor->image.height; i++)
     src[i] = dat[i] ^ msk[i];
    break;
   case 129:
   default:
    for (i = 0; i < s_pitch * cursor->image.height; i++)
     src[i] = dat[i] & msk[i];
    break;
   }

   fb_pad_aligned_buffer(data, d_pitch, src, s_pitch,
      cursor->image.height);

   bg = ((info->cmap.red[bg_idx] & 0xf8) << 7) |
    ((info->cmap.green[bg_idx] & 0xf8) << 2) |
    ((info->cmap.blue[bg_idx] & 0xf8) >> 3) |
    1 << 15;

   fg = ((info->cmap.red[fg_idx] & 0xf8) << 7) |
    ((info->cmap.green[fg_idx] & 0xf8) << 2) |
    ((info->cmap.blue[fg_idx] & 0xf8) >> 3) |
    1 << 15;

   par->riva.LockUnlock(&par->riva, 0);

   rivafb_load_cursor_image(par, data, bg, fg,
       cursor->image.width,
       cursor->image.height);
   kfree(src);
  }
 }

 if (cursor->enable)
  par->riva.ShowHideCursor(&par->riva, 1);

 return 0;
}
