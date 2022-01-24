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
typedef  int u32 ;
typedef  int u16 ;
struct ufx_data {int dummy; } ;
struct fb_var_screeninfo {int xres; int right_margin; int hsync_len; int left_margin; int upper_margin; int yres; int lower_margin; int vsync_len; int sync; int /*<<< orphan*/  pixclock; } ;

/* Variables and functions */
 int FB_SYNC_HOR_HIGH_ACT ; 
 int FB_SYNC_VERT_HIGH_ACT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct ufx_data*,int) ; 
 int FUNC2 (struct ufx_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ufx_data*,int) ; 
 int FUNC4 (struct ufx_data*,int) ; 
 int FUNC5 (struct ufx_data*,int,int) ; 
 int FUNC6 (struct ufx_data*,int) ; 

__attribute__((used)) static int FUNC7(struct ufx_data *dev, struct fb_var_screeninfo *var)
{
	u32 temp;
	u16 h_total, h_active, h_blank_start, h_blank_end, h_sync_start, h_sync_end;
	u16 v_total, v_active, v_blank_start, v_blank_end, v_sync_start, v_sync_end;

	int status = FUNC5(dev, 0x8028, 0);
	FUNC0(status, "ufx_set_vid_mode error disabling RGB pad");

	status = FUNC5(dev, 0x8024, 0);
	FUNC0(status, "ufx_set_vid_mode error disabling VDAC");

	/* shut everything down before changing timing */
	status = FUNC1(dev, true);
	FUNC0(status, "ufx_set_vid_mode error blanking display");

	status = FUNC3(dev, true);
	FUNC0(status, "ufx_set_vid_mode error disabling display");

	status = FUNC2(dev, var->pixclock);
	FUNC0(status, "ufx_set_vid_mode error configuring pixclock");

	status = FUNC5(dev, 0x2000, 0x00000104);
	FUNC0(status, "ufx_set_vid_mode error writing 0x2000");

	/* set horizontal timings */
	h_total = var->xres + var->right_margin + var->hsync_len + var->left_margin;
	h_active = var->xres;
	h_blank_start = var->xres + var->right_margin;
	h_blank_end = var->xres + var->right_margin + var->hsync_len;
	h_sync_start = var->xres + var->right_margin;
	h_sync_end = var->xres + var->right_margin + var->hsync_len;

	temp = ((h_total - 1) << 16) | (h_active - 1);
	status = FUNC5(dev, 0x2008, temp);
	FUNC0(status, "ufx_set_vid_mode error writing 0x2008");

	temp = ((h_blank_start - 1) << 16) | (h_blank_end - 1);
	status = FUNC5(dev, 0x200C, temp);
	FUNC0(status, "ufx_set_vid_mode error writing 0x200C");

	temp = ((h_sync_start - 1) << 16) | (h_sync_end - 1);
	status = FUNC5(dev, 0x2010, temp);
	FUNC0(status, "ufx_set_vid_mode error writing 0x2010");

	/* set vertical timings */
	v_total = var->upper_margin + var->yres + var->lower_margin + var->vsync_len;
	v_active = var->yres;
	v_blank_start = var->yres + var->lower_margin;
	v_blank_end = var->yres + var->lower_margin + var->vsync_len;
	v_sync_start = var->yres + var->lower_margin;
	v_sync_end = var->yres + var->lower_margin + var->vsync_len;

	temp = ((v_total - 1) << 16) | (v_active - 1);
	status = FUNC5(dev, 0x2014, temp);
	FUNC0(status, "ufx_set_vid_mode error writing 0x2014");

	temp = ((v_blank_start - 1) << 16) | (v_blank_end - 1);
	status = FUNC5(dev, 0x2018, temp);
	FUNC0(status, "ufx_set_vid_mode error writing 0x2018");

	temp = ((v_sync_start - 1) << 16) | (v_sync_end - 1);
	status = FUNC5(dev, 0x201C, temp);
	FUNC0(status, "ufx_set_vid_mode error writing 0x201C");

	status = FUNC5(dev, 0x2020, 0x00000000);
	FUNC0(status, "ufx_set_vid_mode error writing 0x2020");

	status = FUNC5(dev, 0x2024, 0x00000000);
	FUNC0(status, "ufx_set_vid_mode error writing 0x2024");

	/* Set the frame length register (#pix * 2 bytes/pixel) */
	temp = var->xres * var->yres * 2;
	temp = (temp + 7) & (~0x7);
	status = FUNC5(dev, 0x2028, temp);
	FUNC0(status, "ufx_set_vid_mode error writing 0x2028");

	/* enable desired output interface & disable others */
	status = FUNC5(dev, 0x2040, 0);
	FUNC0(status, "ufx_set_vid_mode error writing 0x2040");

	status = FUNC5(dev, 0x2044, 0);
	FUNC0(status, "ufx_set_vid_mode error writing 0x2044");

	status = FUNC5(dev, 0x2048, 0);
	FUNC0(status, "ufx_set_vid_mode error writing 0x2048");

	/* set the sync polarities & enable bit */
	temp = 0x00000001;
	if (var->sync & FB_SYNC_HOR_HIGH_ACT)
		temp |= 0x00000010;

	if (var->sync & FB_SYNC_VERT_HIGH_ACT)
		temp |= 0x00000008;

	status = FUNC5(dev, 0x2040, temp);
	FUNC0(status, "ufx_set_vid_mode error writing 0x2040");

	/* start everything back up */
	status = FUNC4(dev, true);
	FUNC0(status, "ufx_set_vid_mode error enabling display");

	/* Unblank the display */
	status = FUNC6(dev, true);
	FUNC0(status, "ufx_set_vid_mode error unblanking display");

	/* enable RGB pad */
	status = FUNC5(dev, 0x8028, 0x00000003);
	FUNC0(status, "ufx_set_vid_mode error enabling RGB pad");

	/* enable VDAC */
	status = FUNC5(dev, 0x8024, 0x00000007);
	FUNC0(status, "ufx_set_vid_mode error enabling VDAC");

	return 0;
}