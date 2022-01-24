#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tridentfb_par {scalar_t__ chip_id; int /*<<< orphan*/  (* init_accel ) (struct tridentfb_par*,int,int) ;scalar_t__ flatpanel; scalar_t__ io_virt; } ;
struct fb_var_screeninfo {int bits_per_pixel; int xres; int right_margin; int hsync_len; int left_margin; int yres; int lower_margin; int vsync_len; int upper_margin; int vmode; int sync; int xres_virtual; int /*<<< orphan*/  pixclock; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_3__ {int line_length; int /*<<< orphan*/  visual; } ;
struct fb_info {int flags; TYPE_2__ cmap; TYPE_1__ fix; struct fb_var_screeninfo var; struct tridentfb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTCModuleTest ; 
 int /*<<< orphan*/  CRTHiOrd ; 
 int CyberControl ; 
 int /*<<< orphan*/  DRAMControl ; 
 int FBINFO_HWACCEL_DISABLED ; 
 int FB_SYNC_HOR_HIGH_ACT ; 
 int FB_SYNC_VERT_HIGH_ACT ; 
 int /*<<< orphan*/  FB_VISUAL_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FB_VISUAL_TRUECOLOR ; 
 int FB_VMODE_INTERLACED ; 
 int /*<<< orphan*/  GraphEngReg ; 
 int /*<<< orphan*/  HorizOverflow ; 
 scalar_t__ IMAGE975 ; 
 int /*<<< orphan*/  InterfaceSel ; 
 int /*<<< orphan*/  LinearAddReg ; 
 int MiscExtFunc ; 
 int MiscIntContReg ; 
 int /*<<< orphan*/  PCIReg ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Performance ; 
 int /*<<< orphan*/  PixelBusReg ; 
 scalar_t__ TGUI9440 ; 
 int /*<<< orphan*/  VGA_ATT_W ; 
 int /*<<< orphan*/  VGA_CRTC_H_BLANK_END ; 
 int /*<<< orphan*/  VGA_CRTC_H_BLANK_START ; 
 int /*<<< orphan*/  VGA_CRTC_H_DISP ; 
 int /*<<< orphan*/  VGA_CRTC_H_SYNC_END ; 
 int /*<<< orphan*/  VGA_CRTC_H_SYNC_START ; 
 int /*<<< orphan*/  VGA_CRTC_H_TOTAL ; 
 int /*<<< orphan*/  VGA_CRTC_LINE_COMPARE ; 
 int /*<<< orphan*/  VGA_CRTC_MAX_SCAN ; 
 int /*<<< orphan*/  VGA_CRTC_MODE ; 
 int /*<<< orphan*/  VGA_CRTC_OVERFLOW ; 
 int /*<<< orphan*/  VGA_CRTC_PRESET_ROW ; 
 int /*<<< orphan*/  VGA_CRTC_V_BLANK_END ; 
 int /*<<< orphan*/  VGA_CRTC_V_BLANK_START ; 
 int /*<<< orphan*/  VGA_CRTC_V_DISP_END ; 
 int /*<<< orphan*/  VGA_CRTC_V_SYNC_END ; 
 int /*<<< orphan*/  VGA_CRTC_V_SYNC_START ; 
 int /*<<< orphan*/  VGA_CRTC_V_TOTAL ; 
 scalar_t__ VGA_IS1_RC ; 
 int /*<<< orphan*/  VGA_MIS_W ; 
 int /*<<< orphan*/  VGA_PEL_IW ; 
 int /*<<< orphan*/  VGA_PEL_MSK ; 
 scalar_t__ center ; 
 int /*<<< orphan*/  FUNC1 (struct tridentfb_par*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tridentfb_par*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int nativex ; 
 int FUNC8 (struct tridentfb_par*,int) ; 
 int FUNC9 (struct tridentfb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tridentfb_par*) ; 
 int /*<<< orphan*/  FUNC11 (struct tridentfb_par*) ; 
 int /*<<< orphan*/  FUNC12 (struct tridentfb_par*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tridentfb_par*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct tridentfb_par*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct tridentfb_par*) ; 
 scalar_t__ stretch ; 
 int /*<<< orphan*/  FUNC16 (struct tridentfb_par*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct tridentfb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct tridentfb_par*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct tridentfb_par*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct tridentfb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct tridentfb_par*,unsigned char,unsigned char) ; 

__attribute__((used)) static int FUNC23(struct fb_info *info)
{
	struct tridentfb_par *par = info->par;
	u32 htotal, hdispend, hsyncstart, hsyncend, hblankstart, hblankend;
	u32 vtotal, vdispend, vsyncstart, vsyncend, vblankstart, vblankend;
	struct fb_var_screeninfo *var = &info->var;
	int bpp = var->bits_per_pixel;
	unsigned char tmp;
	unsigned long vclk;

	FUNC2("enter\n");
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

	FUNC3(par);
	FUNC1(par);
	FUNC20(par, CyberControl, 8);
	tmp = 0xEB;
	if (var->sync & FB_SYNC_HOR_HIGH_ACT)
		tmp &= ~0x40;
	if (var->sync & FB_SYNC_VERT_HIGH_ACT)
		tmp &= ~0x80;

	if (par->flatpanel && var->xres < nativex) {
		/*
		 * on flat panels with native size larger
		 * than requested resolution decide whether
		 * we stretch or center
		 */
		FUNC18(par, tmp | 0xC0, VGA_MIS_W);

		FUNC15(par);

		if (center)
			FUNC10(par);
		else if (stretch)
			FUNC11(par);

	} else {
		FUNC18(par, tmp, VGA_MIS_W);
		FUNC20(par, CyberControl, 8);
	}

	/* vertical timing values */
	FUNC21(par, VGA_CRTC_V_TOTAL, vtotal & 0xFF);
	FUNC21(par, VGA_CRTC_V_DISP_END, vdispend & 0xFF);
	FUNC21(par, VGA_CRTC_V_SYNC_START, vsyncstart & 0xFF);
	FUNC21(par, VGA_CRTC_V_SYNC_END, (vsyncend & 0x0F));
	FUNC21(par, VGA_CRTC_V_BLANK_START, vblankstart & 0xFF);
	FUNC21(par, VGA_CRTC_V_BLANK_END, vblankend & 0xFF);

	/* horizontal timing values */
	FUNC21(par, VGA_CRTC_H_TOTAL, htotal & 0xFF);
	FUNC21(par, VGA_CRTC_H_DISP, hdispend & 0xFF);
	FUNC21(par, VGA_CRTC_H_SYNC_START, hsyncstart & 0xFF);
	FUNC21(par, VGA_CRTC_H_SYNC_END,
		 (hsyncend & 0x1F) | ((hblankend & 0x20) << 2));
	FUNC21(par, VGA_CRTC_H_BLANK_START, hblankstart & 0xFF);
	FUNC21(par, VGA_CRTC_H_BLANK_END, hblankend & 0x1F);

	/* higher bits of vertical timing values */
	tmp = 0x10;
	if (vtotal & 0x100) tmp |= 0x01;
	if (vdispend & 0x100) tmp |= 0x02;
	if (vsyncstart & 0x100) tmp |= 0x04;
	if (vblankstart & 0x100) tmp |= 0x08;

	if (vtotal & 0x200) tmp |= 0x20;
	if (vdispend & 0x200) tmp |= 0x40;
	if (vsyncstart & 0x200) tmp |= 0x80;
	FUNC21(par, VGA_CRTC_OVERFLOW, tmp);

	tmp = FUNC9(par, CRTHiOrd) & 0x07;
	tmp |= 0x08;	/* line compare bit 10 */
	if (vtotal & 0x400) tmp |= 0x80;
	if (vblankstart & 0x400) tmp |= 0x40;
	if (vsyncstart & 0x400) tmp |= 0x20;
	if (vdispend & 0x400) tmp |= 0x10;
	FUNC21(par, CRTHiOrd, tmp);

	tmp = (htotal >> 8) & 0x01;
	tmp |= (hdispend >> 7) & 0x02;
	tmp |= (hsyncstart >> 5) & 0x08;
	tmp |= (hblankstart >> 4) & 0x10;
	FUNC21(par, HorizOverflow, tmp);

	tmp = 0x40;
	if (vblankstart & 0x200) tmp |= 0x20;
//FIXME	if (info->var.vmode & FB_VMODE_DOUBLE) tmp |= 0x80;  /* double scan for 200 line modes */
	FUNC21(par, VGA_CRTC_MAX_SCAN, tmp);

	FUNC21(par, VGA_CRTC_LINE_COMPARE, 0xFF);
	FUNC21(par, VGA_CRTC_PRESET_ROW, 0);
	FUNC21(par, VGA_CRTC_MODE, 0xC3);

	FUNC21(par, LinearAddReg, 0x20);	/* enable linear addressing */

	tmp = (info->var.vmode & FB_VMODE_INTERLACED) ? 0x84 : 0x80;
	/* enable access extended memory */
	FUNC21(par, CRTCModuleTest, tmp);
	tmp = FUNC8(par, MiscIntContReg) & ~0x4;
	if (info->var.vmode & FB_VMODE_INTERLACED)
		tmp |= 0x4;
	FUNC20(par, MiscIntContReg, tmp);

	/* enable GE for text acceleration */
	FUNC21(par, GraphEngReg, 0x80);

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

	FUNC21(par, PixelBusReg, tmp);

	tmp = FUNC9(par, DRAMControl);
	if (!FUNC5(par->chip_id))
		tmp |= 0x10;
	if (FUNC7(par->chip_id))
		tmp |= 0x20;
	FUNC21(par, DRAMControl, tmp);	/* both IO, linear enable */

	FUNC21(par, InterfaceSel, FUNC9(par, InterfaceSel) | 0x40);
	if (!FUNC6(par->chip_id))
		FUNC21(par, Performance, FUNC9(par, Performance) | 0x10);
	/* MMIO & PCI read and write burst enable */
	if (par->chip_id != TGUI9440 && par->chip_id != IMAGE975)
		FUNC21(par, PCIReg, FUNC9(par, PCIReg) | 0x06);

	FUNC19(par->io_virt, 0, 3);
	FUNC19(par->io_virt, 1, 1); /* set char clock 8 dots wide */
	/* enable 4 maps because needed in chain4 mode */
	FUNC19(par->io_virt, 2, 0x0F);
	FUNC19(par->io_virt, 3, 0);
	FUNC19(par->io_virt, 4, 0x0E); /* memory mode enable bitmaps ?? */

	/* convert from picoseconds to kHz */
	vclk = FUNC0(info->var.pixclock);

	/* divide clock by 2 if 32bpp chain4 mode display and CPU path */
	tmp = FUNC8(par, MiscExtFunc) & 0xF0;
	if (bpp == 32 || (par->chip_id == TGUI9440 && bpp == 16)) {
		tmp |= 8;
		vclk *= 2;
	}
	FUNC14(par, vclk);
	FUNC20(par, MiscExtFunc, tmp | 0x12);
	FUNC20(par, 0x5, 0x40);	/* no CGA compat, allow 256 col */
	FUNC20(par, 0x6, 0x05);	/* graphics mode */
	FUNC20(par, 0x7, 0x0F);	/* planes? */

	/* graphics mode and support 256 color modes */
	FUNC22(par, 0x10, 0x41);
	FUNC22(par, 0x12, 0x0F);	/* planes */
	FUNC22(par, 0x13, 0);	/* horizontal pel panning */

	/* colors */
	for (tmp = 0; tmp < 0x10; tmp++)
		FUNC22(par, tmp, tmp);
	FUNC4(par->io_virt + VGA_IS1_RC);	/* flip-flop to index */
	FUNC18(par, 0x20, VGA_ATT_W);		/* enable attr */

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

	FUNC17(par, VGA_PEL_IW);
	FUNC17(par, VGA_PEL_MSK);
	FUNC17(par, VGA_PEL_MSK);
	FUNC17(par, VGA_PEL_MSK);
	FUNC17(par, VGA_PEL_MSK);
	FUNC18(par, tmp, VGA_PEL_MSK);
	FUNC17(par, VGA_PEL_IW);

	if (par->flatpanel)
		FUNC13(par, info->var.yres);
	info->fix.line_length = info->var.xres_virtual * bpp / 8;
	FUNC12(par, info->fix.line_length / 8);

	if (!(info->flags & FBINFO_HWACCEL_DISABLED))
		par->init_accel(par, info->var.xres_virtual, bpp);

	info->fix.visual = (bpp == 8) ? FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
	info->cmap.len = (bpp == 8) ? 256 : 16;
	FUNC2("exit\n");
	return 0;
}