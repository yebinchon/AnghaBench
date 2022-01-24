#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct offb_par {scalar_t__ cmap_type; scalar_t__ cmap_adr; } ;
struct fb_info {scalar_t__ par; } ;

/* Variables and functions */
 scalar_t__ AVIVO_DC_LUTA_BLACK_OFFSET_BLUE ; 
 scalar_t__ AVIVO_DC_LUTA_BLACK_OFFSET_GREEN ; 
 scalar_t__ AVIVO_DC_LUTA_BLACK_OFFSET_RED ; 
 scalar_t__ AVIVO_DC_LUTA_CONTROL ; 
 scalar_t__ AVIVO_DC_LUTA_WHITE_OFFSET_BLUE ; 
 scalar_t__ AVIVO_DC_LUTA_WHITE_OFFSET_GREEN ; 
 scalar_t__ AVIVO_DC_LUTA_WHITE_OFFSET_RED ; 
 scalar_t__ AVIVO_DC_LUTB_BLACK_OFFSET_BLUE ; 
 scalar_t__ AVIVO_DC_LUTB_BLACK_OFFSET_GREEN ; 
 scalar_t__ AVIVO_DC_LUTB_BLACK_OFFSET_RED ; 
 scalar_t__ AVIVO_DC_LUTB_CONTROL ; 
 scalar_t__ AVIVO_DC_LUTB_WHITE_OFFSET_BLUE ; 
 scalar_t__ AVIVO_DC_LUTB_WHITE_OFFSET_GREEN ; 
 scalar_t__ AVIVO_DC_LUTB_WHITE_OFFSET_RED ; 
 scalar_t__ AVIVO_DC_LUT_RW_MODE ; 
 scalar_t__ AVIVO_DC_LUT_RW_SELECT ; 
 scalar_t__ AVIVO_DC_LUT_WRITE_EN_MASK ; 
 scalar_t__ cmap_avivo ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct fb_info *info)
{
	struct offb_par *par = (struct offb_par *) info->par;

	/* On avivo, initialize palette control */
	if (par->cmap_type == cmap_avivo) {
		FUNC0(0, par->cmap_adr + AVIVO_DC_LUTA_CONTROL);
		FUNC0(0, par->cmap_adr + AVIVO_DC_LUTA_BLACK_OFFSET_BLUE);
		FUNC0(0, par->cmap_adr + AVIVO_DC_LUTA_BLACK_OFFSET_GREEN);
		FUNC0(0, par->cmap_adr + AVIVO_DC_LUTA_BLACK_OFFSET_RED);
		FUNC0(0x0000ffff, par->cmap_adr + AVIVO_DC_LUTA_WHITE_OFFSET_BLUE);
		FUNC0(0x0000ffff, par->cmap_adr + AVIVO_DC_LUTA_WHITE_OFFSET_GREEN);
		FUNC0(0x0000ffff, par->cmap_adr + AVIVO_DC_LUTA_WHITE_OFFSET_RED);
		FUNC0(0, par->cmap_adr + AVIVO_DC_LUTB_CONTROL);
		FUNC0(0, par->cmap_adr + AVIVO_DC_LUTB_BLACK_OFFSET_BLUE);
		FUNC0(0, par->cmap_adr + AVIVO_DC_LUTB_BLACK_OFFSET_GREEN);
		FUNC0(0, par->cmap_adr + AVIVO_DC_LUTB_BLACK_OFFSET_RED);
		FUNC0(0x0000ffff, par->cmap_adr + AVIVO_DC_LUTB_WHITE_OFFSET_BLUE);
		FUNC0(0x0000ffff, par->cmap_adr + AVIVO_DC_LUTB_WHITE_OFFSET_GREEN);
		FUNC0(0x0000ffff, par->cmap_adr + AVIVO_DC_LUTB_WHITE_OFFSET_RED);
		FUNC0(1, par->cmap_adr + AVIVO_DC_LUT_RW_SELECT);
		FUNC0(0, par->cmap_adr + AVIVO_DC_LUT_RW_MODE);
		FUNC0(0x0000003f, par->cmap_adr + AVIVO_DC_LUT_WRITE_EN_MASK);
		FUNC0(0, par->cmap_adr + AVIVO_DC_LUT_RW_SELECT);
		FUNC0(0, par->cmap_adr + AVIVO_DC_LUT_RW_MODE);
		FUNC0(0x0000003f, par->cmap_adr + AVIVO_DC_LUT_WRITE_EN_MASK);
	}
	return 0;
}