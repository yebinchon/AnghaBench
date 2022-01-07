
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vsync_start ;
struct neofb_par {int* Attribute; int* CRTC; int ExtCRTOffset; int ExtColorModeSelect; int ExtCRTDispAddr; int VerticalExt; int SysIfaceCntl1; int SysIfaceCntl2; int PanelDispCntlRegRead; int PanelDispCntlReg1; int GeneralLockReg; int ProgramVCLK; int PanelDispCntlReg2; int PanelDispCntlReg3; scalar_t__ NeoPanelWidth; int PanelVertCenterReg1; int PanelVertCenterReg2; int PanelVertCenterReg3; int PanelVertCenterReg4; int PanelVertCenterReg5; int PanelHorizCenterReg1; int PanelHorizCenterReg2; int PanelHorizCenterReg3; int PanelHorizCenterReg4; int PanelHorizCenterReg5; int NeoPanelHeight; int biosMode; int MiscOutReg; int VCLK3NumeratorLow; int VCLK3Denominator; int VCLK3NumeratorHigh; int state; scalar_t__ lcd_stretch; scalar_t__ external_display; scalar_t__ internal_display; scalar_t__ pci_burst; } ;
struct TYPE_5__ {int yres; int lower_margin; int vsync_len; int upper_margin; int bits_per_pixel; int xres_virtual; scalar_t__ xres; int pixclock; } ;
struct TYPE_4__ {int accel; int line_length; void* visual; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; struct neofb_par* par; } ;


 int DBG (char*) ;
 int EINVAL ;
 void* FB_VISUAL_PSEUDOCOLOR ;
 void* FB_VISUAL_TRUECOLOR ;
 int PICOS2KHZ (int ) ;
 int mdelay (int) ;
 int neo2200_accel_init (struct fb_info*,TYPE_2__*) ;
 int neoCalcVCLK (struct fb_info*,struct neofb_par*,int ) ;
 int neoFindMode (int,int,int) ;
 int neoLock (int *) ;
 int neoUnlock () ;
 int outb (int,int) ;
 scalar_t__ vgaHWInit (TYPE_2__*,struct neofb_par*) ;
 int vgaHWProtect (int) ;
 int vgaHWRestore (struct fb_info*,struct neofb_par*) ;
 int vga_rgfx (int *,int) ;
 int vga_wcrt (int *,int,int) ;
 int vga_wgfx (int *,int,int) ;

__attribute__((used)) static int neofb_set_par(struct fb_info *info)
{
 struct neofb_par *par = info->par;
 unsigned char temp;
 int i, clock_hi = 0;
 int lcd_stretch;
 int hoffset, voffset;
 int vsync_start, vtotal;

 DBG("neofb_set_par");

 neoUnlock();

 vgaHWProtect(1);

 vsync_start = info->var.yres + info->var.lower_margin;
 vtotal = vsync_start + info->var.vsync_len + info->var.upper_margin;






 if (vgaHWInit(&info->var, par))
  return -EINVAL;





 par->Attribute[16] = 0x01;

 switch (info->var.bits_per_pixel) {
 case 8:
  par->CRTC[0x13] = info->var.xres_virtual >> 3;
  par->ExtCRTOffset = info->var.xres_virtual >> 11;
  par->ExtColorModeSelect = 0x11;
  break;
 case 16:
  par->CRTC[0x13] = info->var.xres_virtual >> 2;
  par->ExtCRTOffset = info->var.xres_virtual >> 10;
  par->ExtColorModeSelect = 0x13;
  break;
 case 24:
  par->CRTC[0x13] = (info->var.xres_virtual * 3) >> 3;
  par->ExtCRTOffset = (info->var.xres_virtual * 3) >> 11;
  par->ExtColorModeSelect = 0x14;
  break;







 default:
  break;
 }

 par->ExtCRTDispAddr = 0x10;


 par->VerticalExt = (((vtotal - 2) & 0x400) >> 10)
     | (((info->var.yres - 1) & 0x400) >> 9)
     | (((vsync_start) & 0x400) >> 8)
     | (((vsync_start) & 0x400) >> 7);


 if (par->pci_burst)
  par->SysIfaceCntl1 = 0x30;
 else
  par->SysIfaceCntl1 = 0x00;

 par->SysIfaceCntl2 = 0xc0;


 par->PanelDispCntlRegRead = 1;


 par->PanelDispCntlReg1 = 0x00;
 if (par->internal_display)
  par->PanelDispCntlReg1 |= 0x02;
 if (par->external_display)
  par->PanelDispCntlReg1 |= 0x01;


 if (par->PanelDispCntlReg1 == 0x00) {

  par->PanelDispCntlReg1 = vga_rgfx(((void*)0), 0x20) & 0x03;
 }


 switch (info->var.xres) {
 case 1280:
  par->PanelDispCntlReg1 |= 0x60;
  break;
 case 1024:
  par->PanelDispCntlReg1 |= 0x40;
  break;
 case 800:
  par->PanelDispCntlReg1 |= 0x20;
  break;
 case 640:
 default:
  break;
 }


 switch (par->PanelDispCntlReg1 & 0x03) {
 case 0x01:
  par->GeneralLockReg = 0x00;

  par->ProgramVCLK = 1;
  break;
 case 0x02:
 case 0x03:
  par->GeneralLockReg = 0x01;

  par->ProgramVCLK = 0;
  break;
 }







 par->PanelDispCntlReg2 = 0x00;
 par->PanelDispCntlReg3 = 0x00;

 if (par->lcd_stretch && (par->PanelDispCntlReg1 == 0x02) &&
     (info->var.xres != par->NeoPanelWidth)) {
  switch (info->var.xres) {
  case 320:
  case 400:
  case 640:
  case 800:
  case 1024:
   lcd_stretch = 1;
   par->PanelDispCntlReg2 |= 0xC6;
   break;
  default:
   lcd_stretch = 0;

  }
 } else
  lcd_stretch = 0;





 par->PanelVertCenterReg1 = 0x00;
 par->PanelVertCenterReg2 = 0x00;
 par->PanelVertCenterReg3 = 0x00;
 par->PanelVertCenterReg4 = 0x00;
 par->PanelVertCenterReg5 = 0x00;
 par->PanelHorizCenterReg1 = 0x00;
 par->PanelHorizCenterReg2 = 0x00;
 par->PanelHorizCenterReg3 = 0x00;
 par->PanelHorizCenterReg4 = 0x00;
 par->PanelHorizCenterReg5 = 0x00;


 if (par->PanelDispCntlReg1 & 0x02) {
  if (info->var.xres == par->NeoPanelWidth) {




  } else {
   par->PanelDispCntlReg2 |= 0x01;
   par->PanelDispCntlReg3 |= 0x10;


   if (!lcd_stretch) {
    hoffset =
        ((par->NeoPanelWidth -
          info->var.xres) >> 4) - 1;
    voffset =
        ((par->NeoPanelHeight -
          info->var.yres) >> 1) - 2;
   } else {

    hoffset = 0;
    voffset = 0;
   }

   switch (info->var.xres) {
   case 320:
    par->PanelHorizCenterReg3 = hoffset;
    par->PanelVertCenterReg2 = voffset;
    break;
   case 400:
    par->PanelHorizCenterReg4 = hoffset;
    par->PanelVertCenterReg1 = voffset;
    break;
   case 640:
    par->PanelHorizCenterReg1 = hoffset;
    par->PanelVertCenterReg3 = voffset;
    break;
   case 800:
    par->PanelHorizCenterReg2 = hoffset;
    par->PanelVertCenterReg4 = voffset;
    break;
   case 1024:
    par->PanelHorizCenterReg5 = hoffset;
    par->PanelVertCenterReg5 = voffset;
    break;
   case 1280:
   default:

    break;
   }
  }
 }

 par->biosMode =
     neoFindMode(info->var.xres, info->var.yres,
   info->var.bits_per_pixel);





 neoCalcVCLK(info, par, PICOS2KHZ(info->var.pixclock));


 par->MiscOutReg |= 0x0C;





 vga_wgfx(((void*)0), 0x15, 0x00);


 vga_wgfx(((void*)0), 0x0A, par->GeneralLockReg);
 temp = vga_rgfx(((void*)0), 0x90);
 switch (info->fix.accel) {
 case 136:
  temp &= 0xF0;
  temp |= (par->ExtColorModeSelect & ~0xF0);
  break;
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  temp &= 0x70;
  temp |= (par->ExtColorModeSelect & ~0x70);
  break;
 }

 vga_wgfx(((void*)0), 0x90, temp);
 temp = vga_rgfx(((void*)0), 0x25);
 temp &= 0x39;
 vga_wgfx(((void*)0), 0x25, temp);





 mdelay(200);



 vgaHWRestore(info, par);


 switch (info->var.bits_per_pixel) {
 case 8:

  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
  break;
 case 16:

  info->fix.visual = FB_VISUAL_TRUECOLOR;

  for (i = 0; i < 64; i++) {
   outb(i, 0x3c8);

   outb(i << 1, 0x3c9);
   outb(i, 0x3c9);
   outb(i << 1, 0x3c9);
  }
  break;
 case 24:




  info->fix.visual = FB_VISUAL_TRUECOLOR;

  for (i = 0; i < 256; i++) {
   outb(i, 0x3c8);

   outb(i, 0x3c9);
   outb(i, 0x3c9);
   outb(i, 0x3c9);
  }
  break;
 }

 vga_wgfx(((void*)0), 0x0E, par->ExtCRTDispAddr);
 vga_wgfx(((void*)0), 0x0F, par->ExtCRTOffset);
 temp = vga_rgfx(((void*)0), 0x10);
 temp &= 0x0F;
 temp |= (par->SysIfaceCntl1 & ~0x0F);
 vga_wgfx(((void*)0), 0x10, temp);

 vga_wgfx(((void*)0), 0x11, par->SysIfaceCntl2);
 vga_wgfx(((void*)0), 0x15, 0 );
 vga_wgfx(((void*)0), 0x16, 0 );

 temp = vga_rgfx(((void*)0), 0x20);
 switch (info->fix.accel) {
 case 136:
  temp &= 0xFC;
  temp |= (par->PanelDispCntlReg1 & ~0xFC);
  break;
 case 135:
 case 134:
 case 133:
 case 132:
  temp &= 0xDC;
  temp |= (par->PanelDispCntlReg1 & ~0xDC);
  break;
 case 131:
 case 130:
 case 129:
 case 128:
  temp &= 0x98;
  temp |= (par->PanelDispCntlReg1 & ~0x98);
  break;
 }
 vga_wgfx(((void*)0), 0x20, temp);

 temp = vga_rgfx(((void*)0), 0x25);
 temp &= 0x38;
 temp |= (par->PanelDispCntlReg2 & ~0x38);
 vga_wgfx(((void*)0), 0x25, temp);

 if (info->fix.accel != 136) {
  temp = vga_rgfx(((void*)0), 0x30);
  temp &= 0xEF;
  temp |= (par->PanelDispCntlReg3 & ~0xEF);
  vga_wgfx(((void*)0), 0x30, temp);
 }

 vga_wgfx(((void*)0), 0x28, par->PanelVertCenterReg1);
 vga_wgfx(((void*)0), 0x29, par->PanelVertCenterReg2);
 vga_wgfx(((void*)0), 0x2a, par->PanelVertCenterReg3);

 if (info->fix.accel != 136) {
  vga_wgfx(((void*)0), 0x32, par->PanelVertCenterReg4);
  vga_wgfx(((void*)0), 0x33, par->PanelHorizCenterReg1);
  vga_wgfx(((void*)0), 0x34, par->PanelHorizCenterReg2);
  vga_wgfx(((void*)0), 0x35, par->PanelHorizCenterReg3);
 }

 if (info->fix.accel == 132)
  vga_wgfx(((void*)0), 0x36, par->PanelHorizCenterReg4);

 if (info->fix.accel == 131 ||
     info->fix.accel == 130 ||
     info->fix.accel == 129 ||
     info->fix.accel == 128) {
  vga_wgfx(((void*)0), 0x36, par->PanelHorizCenterReg4);
  vga_wgfx(((void*)0), 0x37, par->PanelVertCenterReg5);
  vga_wgfx(((void*)0), 0x38, par->PanelHorizCenterReg5);

  clock_hi = 1;
 }


 if (par->ProgramVCLK && ((vga_rgfx(((void*)0), 0x9B) != par->VCLK3NumeratorLow)
     || (vga_rgfx(((void*)0), 0x9F) != par->VCLK3Denominator)
     || (clock_hi && ((vga_rgfx(((void*)0), 0x8F) & ~0x0f)
        != (par->VCLK3NumeratorHigh &
            ~0x0F))))) {
  vga_wgfx(((void*)0), 0x9B, par->VCLK3NumeratorLow);
  if (clock_hi) {
   temp = vga_rgfx(((void*)0), 0x8F);
   temp &= 0x0F;
   temp |= (par->VCLK3NumeratorHigh & ~0x0F);
   vga_wgfx(((void*)0), 0x8F, temp);
  }
  vga_wgfx(((void*)0), 0x9F, par->VCLK3Denominator);
 }

 if (par->biosMode)
  vga_wcrt(((void*)0), 0x23, par->biosMode);

 vga_wgfx(((void*)0), 0x93, 0xc0);


 if (info->fix.accel == 131 ||
     info->fix.accel == 130 ||
     info->fix.accel == 129 ||
     info->fix.accel == 128) {
  vga_wcrt(((void*)0), 0x70, par->VerticalExt);
 }

 vgaHWProtect(0);


 neoLock(&par->state);

 info->fix.line_length =
     info->var.xres_virtual * (info->var.bits_per_pixel >> 3);

 switch (info->fix.accel) {
  case 131:
  case 130:
  case 129:
  case 128:
   neo2200_accel_init(info, &info->var);
   break;
  default:
   break;
 }
 return 0;
}
