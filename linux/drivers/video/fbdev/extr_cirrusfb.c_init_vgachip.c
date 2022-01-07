
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {scalar_t__ screen_size; int device; struct cirrusfb_info* par; } ;
struct cirrusfb_info {size_t btype; int regbase; } ;
struct cirrusfb_board_info_rec {int sr07; scalar_t__ init_sr07; } ;
 int CL_CRT1B ;
 int CL_CRT51 ;
 int CL_GR2F ;
 int CL_GR31 ;
 int CL_GR33 ;
 int CL_GRB ;
 int CL_GRC ;
 int CL_GRD ;
 int CL_GRE ;
 int CL_POS102 ;
 int CL_SEQR10 ;
 int CL_SEQR11 ;
 int CL_SEQR12 ;
 int CL_SEQR13 ;
 int CL_SEQR16 ;
 int CL_SEQR17 ;
 int CL_SEQR18 ;
 int CL_SEQR6 ;
 int CL_SEQR7 ;
 int CL_SEQRF ;
 int CL_VSSM ;
 int CL_VSSM2 ;
 int VGA_ATC_COLOR_PAGE ;
 int VGA_ATC_MODE ;
 int VGA_ATC_OVERSCAN ;
 int VGA_ATC_PALETTE0 ;
 int VGA_ATC_PALETTE1 ;
 int VGA_ATC_PALETTE2 ;
 int VGA_ATC_PALETTE3 ;
 int VGA_ATC_PALETTE4 ;
 int VGA_ATC_PALETTE5 ;
 int VGA_ATC_PALETTE6 ;
 int VGA_ATC_PALETTE7 ;
 int VGA_ATC_PALETTE8 ;
 int VGA_ATC_PALETTE9 ;
 int VGA_ATC_PALETTEA ;
 int VGA_ATC_PALETTEB ;
 int VGA_ATC_PALETTEC ;
 int VGA_ATC_PALETTED ;
 int VGA_ATC_PALETTEE ;
 int VGA_ATC_PALETTEF ;
 int VGA_ATC_PLANE_ENABLE ;
 int VGA_CRTC_CURSOR_END ;
 int VGA_CRTC_CURSOR_HI ;
 int VGA_CRTC_CURSOR_LO ;
 int VGA_CRTC_CURSOR_START ;
 int VGA_CRTC_PRESET_ROW ;
 int VGA_CRTC_UNDERLINE ;
 int VGA_GFX_BIT_MASK ;
 int VGA_GFX_COMPARE_MASK ;
 int VGA_GFX_COMPARE_VALUE ;
 int VGA_GFX_DATA_ROTATE ;
 int VGA_GFX_MISC ;
 int VGA_GFX_MODE ;
 int VGA_GFX_PLANE_READ ;
 int VGA_GFX_SR_ENABLE ;
 int VGA_GFX_SR_VALUE ;
 int VGA_PEL_MSK ;
 int VGA_SEQ_CHARACTER_MAP ;
 int VGA_SEQ_CLOCK_MODE ;
 int VGA_SEQ_MEMORY_MODE ;
 int VGA_SEQ_PLANE_WRITE ;
 int VGA_SEQ_RESET ;
 int WGen (struct cirrusfb_info*,int ,int) ;
 int WHDR (struct cirrusfb_info*,int ) ;
 int WSFR (struct cirrusfb_info*,int) ;
 int WSFR2 (struct cirrusfb_info*,int) ;
 int assert (int) ;
 struct cirrusfb_board_info_rec* cirrusfb_board_info ;
 int dev_err (int ,char*) ;
 scalar_t__ is_laguna (struct cirrusfb_info*) ;
 int mdelay (int) ;
 int udelay (int) ;
 int vga_wattr (int ,int ,int) ;
 int vga_wcrt (int ,int ,int) ;
 int vga_wgfx (int ,int ,int) ;
 int vga_wseq (int ,int ,int) ;

__attribute__((used)) static void init_vgachip(struct fb_info *info)
{
 struct cirrusfb_info *cinfo = info->par;
 const struct cirrusfb_board_info_rec *bi;

 assert(cinfo != ((void*)0));

 bi = &cirrusfb_board_info[cinfo->btype];


 switch (cinfo->btype) {
 case 130:
  WSFR(cinfo, 0x01);
  udelay(500);
  WSFR(cinfo, 0x51);
  udelay(500);
  break;
 case 132:
  WSFR2(cinfo, 0xff);
  udelay(500);
  break;
 case 129:
 case 128:
  WSFR(cinfo, 0x1f);
  udelay(500);
  WSFR(cinfo, 0x4f);
  udelay(500);
  break;
 case 131:

  vga_wcrt(cinfo->regbase, CL_CRT51, 0x00);
  mdelay(100);

  vga_wgfx(cinfo->regbase, CL_GR31, 0x00);

 case 135:

  vga_wgfx(cinfo->regbase, CL_GR2F, 0x00);

 case 136:

  vga_wgfx(cinfo->regbase, CL_GR33, 0x00);
  break;

 case 134:
 case 133:

  break;

 default:
  dev_err(info->device, "Warning: Unknown board type\n");
  break;
 }


 assert(info->screen_size > 0);





 if (cinfo->btype != 131) {
  WGen(cinfo, CL_VSSM, 0x10);
  WGen(cinfo, CL_POS102, 0x01);
  WGen(cinfo, CL_VSSM, 0x08);

  if (cinfo->btype != 129)
   WGen(cinfo, CL_VSSM2, 0x01);


  vga_wseq(cinfo->regbase, VGA_SEQ_RESET, 0x03);


  vga_wseq(cinfo->regbase, VGA_SEQ_CLOCK_MODE, 0x21);




  vga_wseq(cinfo->regbase, CL_SEQR6, 0x12);

  switch (cinfo->btype) {
  case 135:
   vga_wseq(cinfo->regbase, CL_SEQRF, 0x98);
   break;
  case 136:
  case 134:
  case 133:
   break;
  case 129:



   break;
  default:
   vga_wseq(cinfo->regbase, CL_SEQR16, 0x0f);
   vga_wseq(cinfo->regbase, CL_SEQRF, 0xb0);
   break;
  }
 }

 vga_wseq(cinfo->regbase, VGA_SEQ_PLANE_WRITE, 0xff);

 vga_wseq(cinfo->regbase, VGA_SEQ_CHARACTER_MAP, 0x00);

 vga_wseq(cinfo->regbase, VGA_SEQ_MEMORY_MODE, 0x0a);


 if (bi->init_sr07)
  vga_wseq(cinfo->regbase, CL_SEQR7, bi->sr07);





 vga_wseq(cinfo->regbase, CL_SEQR10, 0x00);

 vga_wseq(cinfo->regbase, CL_SEQR11, 0x00);

 vga_wseq(cinfo->regbase, CL_SEQR12, 0x00);

 vga_wseq(cinfo->regbase, CL_SEQR13, 0x00);


 if (cinfo->btype != 131) {

  vga_wseq(cinfo->regbase, CL_SEQR17, 0x00);

  vga_wseq(cinfo->regbase, CL_SEQR18, 0x02);
 }


 vga_wcrt(cinfo->regbase, VGA_CRTC_PRESET_ROW, 0x00);

 vga_wcrt(cinfo->regbase, VGA_CRTC_CURSOR_START, 0x20);

 vga_wcrt(cinfo->regbase, VGA_CRTC_CURSOR_END, 0x00);

 vga_wcrt(cinfo->regbase, VGA_CRTC_CURSOR_HI, 0x00);

 vga_wcrt(cinfo->regbase, VGA_CRTC_CURSOR_LO, 0x00);


 vga_wcrt(cinfo->regbase, VGA_CRTC_UNDERLINE, 0x00);


 vga_wcrt(cinfo->regbase, CL_CRT1B, 0x02);


 vga_wgfx(cinfo->regbase, VGA_GFX_SR_VALUE, 0x00);

 vga_wgfx(cinfo->regbase, VGA_GFX_SR_ENABLE, 0x00);

 vga_wgfx(cinfo->regbase, VGA_GFX_COMPARE_VALUE, 0x00);

 vga_wgfx(cinfo->regbase, VGA_GFX_DATA_ROTATE, 0x00);

 vga_wgfx(cinfo->regbase, VGA_GFX_PLANE_READ, 0x00);

 vga_wgfx(cinfo->regbase, VGA_GFX_MODE, 0x00);

 vga_wgfx(cinfo->regbase, VGA_GFX_MISC, 0x01);

 vga_wgfx(cinfo->regbase, VGA_GFX_COMPARE_MASK, 0x0f);

 vga_wgfx(cinfo->regbase, VGA_GFX_BIT_MASK, 0xff);

 if (cinfo->btype == 136 || cinfo->btype == 129 ||
     is_laguna(cinfo))

  vga_wgfx(cinfo->regbase, CL_GRB, 0x20);
 else



  vga_wgfx(cinfo->regbase, CL_GRB, 0x28);

 vga_wgfx(cinfo->regbase, CL_GRC, 0xff);
 vga_wgfx(cinfo->regbase, CL_GRD, 0x00);
 vga_wgfx(cinfo->regbase, CL_GRE, 0x00);





 vga_wattr(cinfo->regbase, VGA_ATC_PALETTE0, 0x00);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTE1, 0x01);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTE2, 0x02);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTE3, 0x03);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTE4, 0x04);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTE5, 0x05);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTE6, 0x06);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTE7, 0x07);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTE8, 0x08);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTE9, 0x09);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTEA, 0x0a);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTEB, 0x0b);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTEC, 0x0c);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTED, 0x0d);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTEE, 0x0e);
 vga_wattr(cinfo->regbase, VGA_ATC_PALETTEF, 0x0f);


 vga_wattr(cinfo->regbase, VGA_ATC_MODE, 0x01);

 vga_wattr(cinfo->regbase, VGA_ATC_OVERSCAN, 0x00);

 vga_wattr(cinfo->regbase, VGA_ATC_PLANE_ENABLE, 0x0f);

 vga_wattr(cinfo->regbase, VGA_ATC_COLOR_PAGE, 0x00);

 WGen(cinfo, VGA_PEL_MSK, 0xff);


 vga_wgfx(cinfo->regbase, CL_GR31, 0x04);

 vga_wgfx(cinfo->regbase, CL_GR31, 0x00);


 WHDR(cinfo, 0);
 return;
}
