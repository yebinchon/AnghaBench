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
struct lcd_panel {int config; int bpp; int x_res; int hsw; int hfp; int hbp; int y_res; int vsw; int vfp; int vbp; unsigned long pcd; int pixel_clock; int acb; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__* fbdev; int /*<<< orphan*/  lcd_ck; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; struct lcd_panel* panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_LCDC_CONTROL ; 
 int OMAP_LCDC_CTRL_LCD_TFT ; 
 int OMAP_LCDC_PANEL_TFT ; 
 int OMAP_LCDC_SIGNAL_MASK ; 
 int /*<<< orphan*/  OMAP_LCDC_TIMING0 ; 
 int /*<<< orphan*/  OMAP_LCDC_TIMING1 ; 
 int /*<<< orphan*/  OMAP_LCDC_TIMING2 ; 
 int /*<<< orphan*/  FUNC0 (int,int,int*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_2__ lcdc ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(void)
{
	u32 l;
	struct lcd_panel *panel = lcdc.fbdev->panel;
	int is_tft = panel->config & OMAP_LCDC_PANEL_TFT;
	unsigned long lck;
	int pcd;

	l = FUNC3(OMAP_LCDC_CONTROL);
	l &= ~OMAP_LCDC_CTRL_LCD_TFT;
	l |= is_tft ? OMAP_LCDC_CTRL_LCD_TFT : 0;
#ifdef CONFIG_MACH_OMAP_PALMTE
/* FIXME:if (machine_is_omap_palmte()) { */
		/* PalmTE uses alternate TFT setting in 8BPP mode */
		l |= (is_tft && panel->bpp == 8) ? 0x810000 : 0;
/*	} */
#endif
	FUNC4(l, OMAP_LCDC_CONTROL);

	l = FUNC3(OMAP_LCDC_TIMING2);
	l &= ~(((1 << 6) - 1) << 20);
	l |= (panel->config & OMAP_LCDC_SIGNAL_MASK) << 20;
	FUNC4(l, OMAP_LCDC_TIMING2);

	l = panel->x_res - 1;
	l |= (panel->hsw - 1) << 10;
	l |= (panel->hfp - 1) << 16;
	l |= (panel->hbp - 1) << 24;
	FUNC4(l, OMAP_LCDC_TIMING0);

	l = panel->y_res - 1;
	l |= (panel->vsw - 1) << 10;
	l |= panel->vfp << 16;
	l |= panel->vbp << 24;
	FUNC4(l, OMAP_LCDC_TIMING1);

	l = FUNC3(OMAP_LCDC_TIMING2);
	l &= ~0xff;

	lck = FUNC1(lcdc.lcd_ck);

	if (!panel->pcd)
		FUNC0(is_tft, panel->pixel_clock * 1000, &pcd);
	else {
		FUNC2(lcdc.fbdev->dev,
		    "Pixel clock divider value is obsolete.\n"
		    "Try to set pixel_clock to %lu and pcd to 0 "
		    "in drivers/video/omap/lcd_%s.c and submit a patch.\n",
			lck / panel->pcd / 1000, panel->name);

		pcd = panel->pcd;
	}
	l |= pcd & 0xff;
	l |= panel->acb << 8;
	FUNC4(l, OMAP_LCDC_TIMING2);

	/* update panel info with the exact clock */
	panel->pixel_clock = lck / pcd / 1000;
}