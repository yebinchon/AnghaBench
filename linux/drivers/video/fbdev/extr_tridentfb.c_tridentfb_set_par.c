
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tridentfb_par {scalar_t__ chip_id; int (* init_accel ) (struct tridentfb_par*,int,int) ;scalar_t__ flatpanel; scalar_t__ io_virt; } ;
struct fb_var_screeninfo {int bits_per_pixel; int xres; int right_margin; int hsync_len; int left_margin; int yres; int lower_margin; int vsync_len; int upper_margin; int vmode; int sync; int xres_virtual; int pixclock; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_3__ {int line_length; int visual; } ;
struct fb_info {int flags; TYPE_2__ cmap; TYPE_1__ fix; struct fb_var_screeninfo var; struct tridentfb_par* par; } ;


 int CRTCModuleTest ;
 int CRTHiOrd ;
 int CyberControl ;
 int DRAMControl ;
 int FBINFO_HWACCEL_DISABLED ;
 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int FB_VMODE_INTERLACED ;
 int GraphEngReg ;
 int HorizOverflow ;
 scalar_t__ IMAGE975 ;
 int InterfaceSel ;
 int LinearAddReg ;
 int MiscExtFunc ;
 int MiscIntContReg ;
 int PCIReg ;
 unsigned long PICOS2KHZ (int ) ;
 int Performance ;
 int PixelBusReg ;
 scalar_t__ TGUI9440 ;
 int VGA_ATT_W ;
 int VGA_CRTC_H_BLANK_END ;
 int VGA_CRTC_H_BLANK_START ;
 int VGA_CRTC_H_DISP ;
 int VGA_CRTC_H_SYNC_END ;
 int VGA_CRTC_H_SYNC_START ;
 int VGA_CRTC_H_TOTAL ;
 int VGA_CRTC_LINE_COMPARE ;
 int VGA_CRTC_MAX_SCAN ;
 int VGA_CRTC_MODE ;
 int VGA_CRTC_OVERFLOW ;
 int VGA_CRTC_PRESET_ROW ;
 int VGA_CRTC_V_BLANK_END ;
 int VGA_CRTC_V_BLANK_START ;
 int VGA_CRTC_V_DISP_END ;
 int VGA_CRTC_V_SYNC_END ;
 int VGA_CRTC_V_SYNC_START ;
 int VGA_CRTC_V_TOTAL ;
 scalar_t__ VGA_IS1_RC ;
 int VGA_MIS_W ;
 int VGA_PEL_IW ;
 int VGA_PEL_MSK ;
 scalar_t__ center ;
 int crtc_unlock (struct tridentfb_par*) ;
 int debug (char*) ;
 int enable_mmio (struct tridentfb_par*) ;
 int fb_readb (scalar_t__) ;
 int is_oldprotect (scalar_t__) ;
 int is_xp (scalar_t__) ;
 scalar_t__ iscyber (scalar_t__) ;
 int nativex ;
 int read3CE (struct tridentfb_par*,int) ;
 int read3X4 (struct tridentfb_par*,int ) ;
 int screen_center (struct tridentfb_par*) ;
 int screen_stretch (struct tridentfb_par*) ;
 int set_lwidth (struct tridentfb_par*,int) ;
 int set_number_of_lines (struct tridentfb_par*,int) ;
 int set_vclk (struct tridentfb_par*,unsigned long) ;
 int shadowmode_on (struct tridentfb_par*) ;
 scalar_t__ stretch ;
 int stub1 (struct tridentfb_par*,int,int) ;
 int t_inb (struct tridentfb_par*,int ) ;
 int t_outb (struct tridentfb_par*,unsigned char,int ) ;
 int vga_mm_wseq (scalar_t__,int,int) ;
 int write3CE (struct tridentfb_par*,int,int) ;
 int write3X4 (struct tridentfb_par*,int ,int) ;
 int writeAttr (struct tridentfb_par*,unsigned char,unsigned char) ;

__attribute__((used)) static int tridentfb_set_par(struct fb_info *info)
{
 struct tridentfb_par *par = info->par;
 u32 htotal, hdispend, hsyncstart, hsyncend, hblankstart, hblankend;
 u32 vtotal, vdispend, vsyncstart, vsyncend, vblankstart, vblankend;
 struct fb_var_screeninfo *var = &info->var;
 int bpp = var->bits_per_pixel;
 unsigned char tmp;
 unsigned long vclk;

 debug("enter\n");
 hdispend = var->xres / 8 - 1;
 hsyncstart = (var->xres + var->right_margin) / 8;
 hsyncend = (var->xres + var->right_margin + var->hsync_len) / 8;
 htotal = (var->xres + var->left_margin + var->right_margin +
    var->hsync_len) / 8 - 5;
 hblankstart = hdispend + 1;
 hblankend = htotal + 3;

 vdispend = var->yres - 1;
 vsyncstart = var->yres + var->lower_margin;
 vsyncend = vsyncstart + var->vsync_len;
 vtotal = var->upper_margin + vsyncend - 2;
 vblankstart = vdispend + 1;
 vblankend = vtotal;

 if (info->var.vmode & FB_VMODE_INTERLACED) {
  vtotal /= 2;
  vdispend /= 2;
  vsyncstart /= 2;
  vsyncend /= 2;
  vblankstart /= 2;
  vblankend /= 2;
 }

 enable_mmio(par);
 crtc_unlock(par);
 write3CE(par, CyberControl, 8);
 tmp = 0xEB;
 if (var->sync & FB_SYNC_HOR_HIGH_ACT)
  tmp &= ~0x40;
 if (var->sync & FB_SYNC_VERT_HIGH_ACT)
  tmp &= ~0x80;

 if (par->flatpanel && var->xres < nativex) {





  t_outb(par, tmp | 0xC0, VGA_MIS_W);

  shadowmode_on(par);

  if (center)
   screen_center(par);
  else if (stretch)
   screen_stretch(par);

 } else {
  t_outb(par, tmp, VGA_MIS_W);
  write3CE(par, CyberControl, 8);
 }


 write3X4(par, VGA_CRTC_V_TOTAL, vtotal & 0xFF);
 write3X4(par, VGA_CRTC_V_DISP_END, vdispend & 0xFF);
 write3X4(par, VGA_CRTC_V_SYNC_START, vsyncstart & 0xFF);
 write3X4(par, VGA_CRTC_V_SYNC_END, (vsyncend & 0x0F));
 write3X4(par, VGA_CRTC_V_BLANK_START, vblankstart & 0xFF);
 write3X4(par, VGA_CRTC_V_BLANK_END, vblankend & 0xFF);


 write3X4(par, VGA_CRTC_H_TOTAL, htotal & 0xFF);
 write3X4(par, VGA_CRTC_H_DISP, hdispend & 0xFF);
 write3X4(par, VGA_CRTC_H_SYNC_START, hsyncstart & 0xFF);
 write3X4(par, VGA_CRTC_H_SYNC_END,
   (hsyncend & 0x1F) | ((hblankend & 0x20) << 2));
 write3X4(par, VGA_CRTC_H_BLANK_START, hblankstart & 0xFF);
 write3X4(par, VGA_CRTC_H_BLANK_END, hblankend & 0x1F);


 tmp = 0x10;
 if (vtotal & 0x100) tmp |= 0x01;
 if (vdispend & 0x100) tmp |= 0x02;
 if (vsyncstart & 0x100) tmp |= 0x04;
 if (vblankstart & 0x100) tmp |= 0x08;

 if (vtotal & 0x200) tmp |= 0x20;
 if (vdispend & 0x200) tmp |= 0x40;
 if (vsyncstart & 0x200) tmp |= 0x80;
 write3X4(par, VGA_CRTC_OVERFLOW, tmp);

 tmp = read3X4(par, CRTHiOrd) & 0x07;
 tmp |= 0x08;
 if (vtotal & 0x400) tmp |= 0x80;
 if (vblankstart & 0x400) tmp |= 0x40;
 if (vsyncstart & 0x400) tmp |= 0x20;
 if (vdispend & 0x400) tmp |= 0x10;
 write3X4(par, CRTHiOrd, tmp);

 tmp = (htotal >> 8) & 0x01;
 tmp |= (hdispend >> 7) & 0x02;
 tmp |= (hsyncstart >> 5) & 0x08;
 tmp |= (hblankstart >> 4) & 0x10;
 write3X4(par, HorizOverflow, tmp);

 tmp = 0x40;
 if (vblankstart & 0x200) tmp |= 0x20;

 write3X4(par, VGA_CRTC_MAX_SCAN, tmp);

 write3X4(par, VGA_CRTC_LINE_COMPARE, 0xFF);
 write3X4(par, VGA_CRTC_PRESET_ROW, 0);
 write3X4(par, VGA_CRTC_MODE, 0xC3);

 write3X4(par, LinearAddReg, 0x20);

 tmp = (info->var.vmode & FB_VMODE_INTERLACED) ? 0x84 : 0x80;

 write3X4(par, CRTCModuleTest, tmp);
 tmp = read3CE(par, MiscIntContReg) & ~0x4;
 if (info->var.vmode & FB_VMODE_INTERLACED)
  tmp |= 0x4;
 write3CE(par, MiscIntContReg, tmp);


 write3X4(par, GraphEngReg, 0x80);

 switch (bpp) {
 case 8:
  tmp = 0x00;
  break;
 case 16:
  tmp = 0x05;
  break;
 case 24:
  tmp = 0x29;
  break;
 case 32:
  tmp = 0x09;
  break;
 }

 write3X4(par, PixelBusReg, tmp);

 tmp = read3X4(par, DRAMControl);
 if (!is_oldprotect(par->chip_id))
  tmp |= 0x10;
 if (iscyber(par->chip_id))
  tmp |= 0x20;
 write3X4(par, DRAMControl, tmp);

 write3X4(par, InterfaceSel, read3X4(par, InterfaceSel) | 0x40);
 if (!is_xp(par->chip_id))
  write3X4(par, Performance, read3X4(par, Performance) | 0x10);

 if (par->chip_id != TGUI9440 && par->chip_id != IMAGE975)
  write3X4(par, PCIReg, read3X4(par, PCIReg) | 0x06);

 vga_mm_wseq(par->io_virt, 0, 3);
 vga_mm_wseq(par->io_virt, 1, 1);

 vga_mm_wseq(par->io_virt, 2, 0x0F);
 vga_mm_wseq(par->io_virt, 3, 0);
 vga_mm_wseq(par->io_virt, 4, 0x0E);


 vclk = PICOS2KHZ(info->var.pixclock);


 tmp = read3CE(par, MiscExtFunc) & 0xF0;
 if (bpp == 32 || (par->chip_id == TGUI9440 && bpp == 16)) {
  tmp |= 8;
  vclk *= 2;
 }
 set_vclk(par, vclk);
 write3CE(par, MiscExtFunc, tmp | 0x12);
 write3CE(par, 0x5, 0x40);
 write3CE(par, 0x6, 0x05);
 write3CE(par, 0x7, 0x0F);


 writeAttr(par, 0x10, 0x41);
 writeAttr(par, 0x12, 0x0F);
 writeAttr(par, 0x13, 0);


 for (tmp = 0; tmp < 0x10; tmp++)
  writeAttr(par, tmp, tmp);
 fb_readb(par->io_virt + VGA_IS1_RC);
 t_outb(par, 0x20, VGA_ATT_W);

 switch (bpp) {
 case 8:
  tmp = 0;
  break;
 case 16:
  tmp = 0x30;
  break;
 case 24:
 case 32:
  tmp = 0xD0;
  break;
 }

 t_inb(par, VGA_PEL_IW);
 t_inb(par, VGA_PEL_MSK);
 t_inb(par, VGA_PEL_MSK);
 t_inb(par, VGA_PEL_MSK);
 t_inb(par, VGA_PEL_MSK);
 t_outb(par, tmp, VGA_PEL_MSK);
 t_inb(par, VGA_PEL_IW);

 if (par->flatpanel)
  set_number_of_lines(par, info->var.yres);
 info->fix.line_length = info->var.xres_virtual * bpp / 8;
 set_lwidth(par, info->fix.line_length / 8);

 if (!(info->flags & FBINFO_HWACCEL_DISABLED))
  par->init_accel(par, info->var.xres_virtual, bpp);

 info->fix.visual = (bpp == 8) ? FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
 info->cmap.len = (bpp == 8) ? 256 : 16;
 debug("exit\n");
 return 0;
}
