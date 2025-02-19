
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int vgabase; } ;
struct s3fb_info {scalar_t__ chip; TYPE_2__ state; } ;
struct TYPE_8__ {int bits_per_pixel; int xres_virtual; int yres_virtual; int vmode; int xres; int pixclock; int left_margin; int right_margin; int hsync_len; int activate; scalar_t__ yoffset; scalar_t__ xoffset; } ;
struct TYPE_9__ {int ypanstep; int line_length; } ;
struct TYPE_6__ {int blit_x; int blit_y; } ;
struct fb_info {int screen_base; TYPE_3__ var; int node; TYPE_5__ fix; TYPE_1__ pixmap; int * tileops; int flags; struct s3fb_info* par; } ;


 scalar_t__ CHIP_260_VIRGE_MX ;
 scalar_t__ CHIP_357_VIRGE_GX2 ;
 scalar_t__ CHIP_359_VIRGE_GX2P ;
 scalar_t__ CHIP_360_TRIO3D_1X ;
 scalar_t__ CHIP_362_TRIO3D_2X ;
 scalar_t__ CHIP_365_TRIO3D ;
 scalar_t__ CHIP_368_TRIO3D_2X ;
 scalar_t__ CHIP_375_VIRGE_DX ;
 scalar_t__ CHIP_385_VIRGE_GX ;
 scalar_t__ CHIP_988_VIRGE_VX ;
 int EINVAL ;
 int FBINFO_MISC_TILEBLITTING ;
 int FB_ACTIVATE_NOW ;
 int FB_VMODE_DOUBLE ;
 int FB_VMODE_INTERLACED ;
 int VGA_GFX_MODE ;
 int clamp (int,int,int) ;
 scalar_t__ fasttext ;
 int fb_dbg (struct fb_info*,char*,...) ;
 int fb_err (struct fb_info*,char*) ;
 int memset_io (int ,int,int) ;
 int msleep (int) ;
 int s3_dtpc_regs ;
 int s3_line_compare_regs ;
 int s3_offset_regs ;
 int s3_set_pixclock (struct fb_info*,int) ;
 int s3_start_address_regs ;
 int s3_timing_regs ;
 int s3fb_fast_tile_ops ;
 int s3fb_formats ;
 int s3fb_tile_ops ;
 int svga_match_format (int ,TYPE_3__*,TYPE_5__*) ;
 int svga_set_default_atc_regs (int ) ;
 int svga_set_default_crt_regs (int ) ;
 int svga_set_default_gfx_regs (int ) ;
 int svga_set_default_seq_regs (int ) ;
 int svga_set_textmode_vga_regs (int ) ;
 int svga_set_timings (int ,int *,TYPE_3__*,int,int,int,int,int,int ) ;
 int svga_wattr (int ,int,int) ;
 int svga_wcrt_mask (int ,int,int,int) ;
 int svga_wcrt_multi (int ,int ,int) ;
 int svga_wseq_mask (int ,int,int,int) ;
 int vga_wcrt (int ,int,int) ;
 int vga_wgfx (int ,int ,int) ;
 int vga_wseq (int ,int,int) ;

__attribute__((used)) static int s3fb_set_par(struct fb_info *info)
{
 struct s3fb_info *par = info->par;
 u32 value, mode, hmul, offset_value, screen_size, multiplex, dbytes;
 u32 bpp = info->var.bits_per_pixel;
 u32 htotal, hsstart;

 if (bpp != 0) {
  info->fix.ypanstep = 1;
  info->fix.line_length = (info->var.xres_virtual * bpp) / 8;

  info->flags &= ~FBINFO_MISC_TILEBLITTING;
  info->tileops = ((void*)0);


  info->pixmap.blit_x = (bpp == 4) ? (1 << (8 - 1)) : (~(u32)0);
  info->pixmap.blit_y = ~(u32)0;

  offset_value = (info->var.xres_virtual * bpp) / 64;
  screen_size = info->var.yres_virtual * info->fix.line_length;
 } else {
  info->fix.ypanstep = 16;
  info->fix.line_length = 0;

  info->flags |= FBINFO_MISC_TILEBLITTING;
  info->tileops = fasttext ? &s3fb_fast_tile_ops : &s3fb_tile_ops;


  info->pixmap.blit_x = 1 << (8 - 1);
  info->pixmap.blit_y = 1 << (16 - 1);

  offset_value = info->var.xres_virtual / 16;
  screen_size = (info->var.xres_virtual * info->var.yres_virtual) / 64;
 }

 info->var.xoffset = 0;
 info->var.yoffset = 0;
 info->var.activate = FB_ACTIVATE_NOW;


 vga_wcrt(par->state.vgabase, 0x38, 0x48);
 vga_wcrt(par->state.vgabase, 0x39, 0xA5);
 vga_wseq(par->state.vgabase, 0x08, 0x06);
 svga_wcrt_mask(par->state.vgabase, 0x11, 0x00, 0x80);


 svga_wseq_mask(par->state.vgabase, 0x01, 0x20, 0x20);
 svga_wcrt_mask(par->state.vgabase, 0x17, 0x00, 0x80);


 svga_set_default_gfx_regs(par->state.vgabase);
 svga_set_default_atc_regs(par->state.vgabase);
 svga_set_default_seq_regs(par->state.vgabase);
 svga_set_default_crt_regs(par->state.vgabase);
 svga_wcrt_multi(par->state.vgabase, s3_line_compare_regs, 0xFFFFFFFF);
 svga_wcrt_multi(par->state.vgabase, s3_start_address_regs, 0);


 svga_wcrt_mask(par->state.vgabase, 0x58, 0x10, 0x10);
 svga_wcrt_mask(par->state.vgabase, 0x31, 0x08, 0x08);



 svga_wcrt_mask(par->state.vgabase, 0x33, 0x00, 0x08);
 svga_wcrt_mask(par->state.vgabase, 0x43, 0x00, 0x01);

 svga_wcrt_mask(par->state.vgabase, 0x5D, 0x00, 0x28);
 fb_dbg(info, "offset register       : %d\n", offset_value);
 svga_wcrt_multi(par->state.vgabase, s3_offset_regs, offset_value);

 if (par->chip != CHIP_357_VIRGE_GX2 &&
     par->chip != CHIP_359_VIRGE_GX2P &&
     par->chip != CHIP_360_TRIO3D_1X &&
     par->chip != CHIP_362_TRIO3D_2X &&
     par->chip != CHIP_368_TRIO3D_2X &&
     par->chip != CHIP_260_VIRGE_MX) {
  vga_wcrt(par->state.vgabase, 0x54, 0x18);
  vga_wcrt(par->state.vgabase, 0x60, 0xff);
  vga_wcrt(par->state.vgabase, 0x61, 0xff);
  vga_wcrt(par->state.vgabase, 0x62, 0xff);
 }

 vga_wcrt(par->state.vgabase, 0x3A, 0x35);
 svga_wattr(par->state.vgabase, 0x33, 0x00);

 if (info->var.vmode & FB_VMODE_DOUBLE)
  svga_wcrt_mask(par->state.vgabase, 0x09, 0x80, 0x80);
 else
  svga_wcrt_mask(par->state.vgabase, 0x09, 0x00, 0x80);

 if (info->var.vmode & FB_VMODE_INTERLACED)
  svga_wcrt_mask(par->state.vgabase, 0x42, 0x20, 0x20);
 else
  svga_wcrt_mask(par->state.vgabase, 0x42, 0x00, 0x20);


 svga_wcrt_mask(par->state.vgabase, 0x45, 0x00, 0x01);

 svga_wcrt_mask(par->state.vgabase, 0x67, 0x00, 0x0C);

 mode = svga_match_format(s3fb_formats, &(info->var), &(info->fix));


 if (par->chip == CHIP_375_VIRGE_DX) {
  vga_wcrt(par->state.vgabase, 0x86, 0x80);
  vga_wcrt(par->state.vgabase, 0x90, 0x00);
 }


 if (par->chip == CHIP_988_VIRGE_VX) {
  vga_wcrt(par->state.vgabase, 0x50, 0x00);
  vga_wcrt(par->state.vgabase, 0x67, 0x50);
  msleep(10);
  vga_wcrt(par->state.vgabase, 0x63, (mode <= 2) ? 0x90 : 0x09);
  vga_wcrt(par->state.vgabase, 0x66, 0x90);
 }

 if (par->chip == CHIP_357_VIRGE_GX2 ||
     par->chip == CHIP_359_VIRGE_GX2P ||
     par->chip == CHIP_360_TRIO3D_1X ||
     par->chip == CHIP_362_TRIO3D_2X ||
     par->chip == CHIP_368_TRIO3D_2X ||
     par->chip == CHIP_365_TRIO3D ||
     par->chip == CHIP_375_VIRGE_DX ||
     par->chip == CHIP_385_VIRGE_GX ||
     par->chip == CHIP_260_VIRGE_MX) {
  dbytes = info->var.xres * ((bpp+7)/8);
  vga_wcrt(par->state.vgabase, 0x91, (dbytes + 7) / 8);
  vga_wcrt(par->state.vgabase, 0x90, (((dbytes + 7) / 8) >> 8) | 0x80);

  vga_wcrt(par->state.vgabase, 0x66, 0x81);
 }

 if (par->chip == CHIP_357_VIRGE_GX2 ||
     par->chip == CHIP_359_VIRGE_GX2P ||
     par->chip == CHIP_360_TRIO3D_1X ||
     par->chip == CHIP_362_TRIO3D_2X ||
     par->chip == CHIP_368_TRIO3D_2X ||
     par->chip == CHIP_260_VIRGE_MX)
  vga_wcrt(par->state.vgabase, 0x34, 0x00);
 else
  vga_wcrt(par->state.vgabase, 0x34, 0x10);

 svga_wcrt_mask(par->state.vgabase, 0x31, 0x00, 0x40);
 multiplex = 0;
 hmul = 1;


 switch (mode) {
 case 0:
  fb_dbg(info, "text mode\n");
  svga_set_textmode_vga_regs(par->state.vgabase);


  svga_wcrt_mask(par->state.vgabase, 0x50, 0x00, 0x30);
  svga_wcrt_mask(par->state.vgabase, 0x67, 0x00, 0xF0);


  svga_wcrt_mask(par->state.vgabase, 0x3A, 0x00, 0x30);

  if (fasttext) {
   fb_dbg(info, "high speed text mode set\n");
   svga_wcrt_mask(par->state.vgabase, 0x31, 0x40, 0x40);
  }
  break;
 case 1:
  fb_dbg(info, "4 bit pseudocolor\n");
  vga_wgfx(par->state.vgabase, VGA_GFX_MODE, 0x40);


  svga_wcrt_mask(par->state.vgabase, 0x50, 0x00, 0x30);
  svga_wcrt_mask(par->state.vgabase, 0x67, 0x00, 0xF0);


  svga_wcrt_mask(par->state.vgabase, 0x3A, 0x00, 0x30);
  break;
 case 2:
  fb_dbg(info, "4 bit pseudocolor, planar\n");


  svga_wcrt_mask(par->state.vgabase, 0x50, 0x00, 0x30);
  svga_wcrt_mask(par->state.vgabase, 0x67, 0x00, 0xF0);


  svga_wcrt_mask(par->state.vgabase, 0x3A, 0x00, 0x30);
  break;
 case 3:
  fb_dbg(info, "8 bit pseudocolor\n");
  svga_wcrt_mask(par->state.vgabase, 0x50, 0x00, 0x30);
  if (info->var.pixclock > 20000 ||
      par->chip == CHIP_357_VIRGE_GX2 ||
      par->chip == CHIP_359_VIRGE_GX2P ||
      par->chip == CHIP_360_TRIO3D_1X ||
      par->chip == CHIP_362_TRIO3D_2X ||
      par->chip == CHIP_368_TRIO3D_2X ||
      par->chip == CHIP_260_VIRGE_MX)
   svga_wcrt_mask(par->state.vgabase, 0x67, 0x00, 0xF0);
  else {
   svga_wcrt_mask(par->state.vgabase, 0x67, 0x10, 0xF0);
   multiplex = 1;
  }
  break;
 case 4:
  fb_dbg(info, "5/5/5 truecolor\n");
  if (par->chip == CHIP_988_VIRGE_VX) {
   if (info->var.pixclock > 20000)
    svga_wcrt_mask(par->state.vgabase, 0x67, 0x20, 0xF0);
   else
    svga_wcrt_mask(par->state.vgabase, 0x67, 0x30, 0xF0);
  } else if (par->chip == CHIP_365_TRIO3D) {
   svga_wcrt_mask(par->state.vgabase, 0x50, 0x10, 0x30);
   if (info->var.pixclock > 8695) {
    svga_wcrt_mask(par->state.vgabase, 0x67, 0x30, 0xF0);
    hmul = 2;
   } else {
    svga_wcrt_mask(par->state.vgabase, 0x67, 0x20, 0xF0);
    multiplex = 1;
   }
  } else {
   svga_wcrt_mask(par->state.vgabase, 0x50, 0x10, 0x30);
   svga_wcrt_mask(par->state.vgabase, 0x67, 0x30, 0xF0);
   if (par->chip != CHIP_357_VIRGE_GX2 &&
       par->chip != CHIP_359_VIRGE_GX2P &&
       par->chip != CHIP_360_TRIO3D_1X &&
       par->chip != CHIP_362_TRIO3D_2X &&
       par->chip != CHIP_368_TRIO3D_2X &&
       par->chip != CHIP_260_VIRGE_MX)
    hmul = 2;
  }
  break;
 case 5:
  fb_dbg(info, "5/6/5 truecolor\n");
  if (par->chip == CHIP_988_VIRGE_VX) {
   if (info->var.pixclock > 20000)
    svga_wcrt_mask(par->state.vgabase, 0x67, 0x40, 0xF0);
   else
    svga_wcrt_mask(par->state.vgabase, 0x67, 0x50, 0xF0);
  } else if (par->chip == CHIP_365_TRIO3D) {
   svga_wcrt_mask(par->state.vgabase, 0x50, 0x10, 0x30);
   if (info->var.pixclock > 8695) {
    svga_wcrt_mask(par->state.vgabase, 0x67, 0x50, 0xF0);
    hmul = 2;
   } else {
    svga_wcrt_mask(par->state.vgabase, 0x67, 0x40, 0xF0);
    multiplex = 1;
   }
  } else {
   svga_wcrt_mask(par->state.vgabase, 0x50, 0x10, 0x30);
   svga_wcrt_mask(par->state.vgabase, 0x67, 0x50, 0xF0);
   if (par->chip != CHIP_357_VIRGE_GX2 &&
       par->chip != CHIP_359_VIRGE_GX2P &&
       par->chip != CHIP_360_TRIO3D_1X &&
       par->chip != CHIP_362_TRIO3D_2X &&
       par->chip != CHIP_368_TRIO3D_2X &&
       par->chip != CHIP_260_VIRGE_MX)
    hmul = 2;
  }
  break;
 case 6:

  fb_dbg(info, "8/8/8 truecolor\n");
  svga_wcrt_mask(par->state.vgabase, 0x67, 0xD0, 0xF0);
  break;
 case 7:
  fb_dbg(info, "8/8/8/8 truecolor\n");
  svga_wcrt_mask(par->state.vgabase, 0x50, 0x30, 0x30);
  svga_wcrt_mask(par->state.vgabase, 0x67, 0xD0, 0xF0);
  break;
 default:
  fb_err(info, "unsupported mode - bug\n");
  return -EINVAL;
 }

 if (par->chip != CHIP_988_VIRGE_VX) {
  svga_wseq_mask(par->state.vgabase, 0x15, multiplex ? 0x10 : 0x00, 0x10);
  svga_wseq_mask(par->state.vgabase, 0x18, multiplex ? 0x80 : 0x00, 0x80);
 }

 s3_set_pixclock(info, info->var.pixclock);
 svga_set_timings(par->state.vgabase, &s3_timing_regs, &(info->var), hmul, 1,
    (info->var.vmode & FB_VMODE_DOUBLE) ? 2 : 1,
    (info->var.vmode & FB_VMODE_INTERLACED) ? 2 : 1,
    hmul, info->node);


 htotal = info->var.xres + info->var.left_margin + info->var.right_margin + info->var.hsync_len;
 htotal = ((htotal * hmul) / 8) - 5;
 vga_wcrt(par->state.vgabase, 0x3C, (htotal + 1) / 2);


 hsstart = ((info->var.xres + info->var.right_margin) * hmul) / 8;

 value = clamp((htotal + hsstart + 1) / 2 + 2, hsstart + 4, htotal + 1);
 svga_wcrt_multi(par->state.vgabase, s3_dtpc_regs, value);

 memset_io(info->screen_base, 0x00, screen_size);

 svga_wcrt_mask(par->state.vgabase, 0x17, 0x80, 0x80);
 svga_wseq_mask(par->state.vgabase, 0x01, 0x00, 0x20);

 return 0;
}
