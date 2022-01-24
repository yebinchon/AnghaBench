#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tmiofb_par {scalar_t__ lcr; } ;
struct tmio_fb_data {int /*<<< orphan*/  (* lcd_set_power ) (struct platform_device*,int) ;int /*<<< orphan*/  (* lcd_mode ) (struct platform_device*,struct fb_videomode*) ;} ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fb_videomode {int hsync_len; int left_margin; int xres; int right_margin; int vsync_len; int upper_margin; int yres; int lower_margin; } ;
struct TYPE_2__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; struct tmiofb_par* par; struct fb_videomode* mode; } ;

/* Variables and functions */
 scalar_t__ LCR_GDSAH ; 
 scalar_t__ LCR_GDSAL ; 
 scalar_t__ LCR_GM ; 
 scalar_t__ LCR_HDS ; 
 scalar_t__ LCR_HNP ; 
 scalar_t__ LCR_HSE ; 
 scalar_t__ LCR_HSS ; 
 scalar_t__ LCR_HT ; 
 scalar_t__ LCR_ILN ; 
 scalar_t__ LCR_LCDCC ; 
 scalar_t__ LCR_LCDCCRC ; 
 scalar_t__ LCR_MISC ; 
 scalar_t__ LCR_SP ; 
 scalar_t__ LCR_VCS ; 
 scalar_t__ LCR_VDS ; 
 scalar_t__ LCR_VHPCH ; 
 scalar_t__ LCR_VHPCL ; 
 scalar_t__ LCR_VHPN ; 
 scalar_t__ LCR_VSE ; 
 scalar_t__ LCR_VSS ; 
 scalar_t__ LCR_VT ; 
 struct tmio_fb_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct fb_info* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct fb_videomode*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct platform_device *dev)
{
	struct tmio_fb_data *data = FUNC0(&dev->dev);
	struct fb_info *info = FUNC2(dev);
	struct fb_videomode *mode = info->mode;
	struct tmiofb_par *par = info->par;
	unsigned int i;

	FUNC6(0, par->lcr + LCR_GM);
	data->lcd_set_power(dev, 0);
	FUNC6(0x0010, par->lcr + LCR_LCDCCRC);
	data->lcd_mode(dev, mode);
	data->lcd_set_power(dev, 1);

	FUNC6(info->fix.line_length, par->lcr + LCR_VHPN);
	FUNC6(0, par->lcr + LCR_GDSAH);
	FUNC6(0, par->lcr + LCR_GDSAL);
	FUNC6(info->fix.line_length >> 16, par->lcr + LCR_VHPCH);
	FUNC6(info->fix.line_length, par->lcr + LCR_VHPCL);
	FUNC6(i = 0, par->lcr + LCR_HSS);
	FUNC6(i += mode->hsync_len, par->lcr + LCR_HSE);
	FUNC6(i += mode->left_margin, par->lcr + LCR_HDS);
	FUNC6(i += mode->xres + mode->right_margin, par->lcr + LCR_HT);
	FUNC6(mode->xres, par->lcr + LCR_HNP);
	FUNC6(i = 0, par->lcr + LCR_VSS);
	FUNC6(i += mode->vsync_len, par->lcr + LCR_VSE);
	FUNC6(i += mode->upper_margin, par->lcr + LCR_VDS);
	FUNC6(i += mode->yres, par->lcr + LCR_ILN);
	FUNC6(i += mode->lower_margin, par->lcr + LCR_VT);
	FUNC6(3, par->lcr + LCR_MISC); /* RGB565 mode */
	FUNC6(1, par->lcr + LCR_GM); /* VRAM enable */
	FUNC6(0x4007, par->lcr + LCR_LCDCC);
	FUNC6(3, par->lcr + LCR_SP);  /* sync polarity */

	FUNC6(0x0010, par->lcr + LCR_LCDCCRC);
	FUNC1(5); /* wait for device to settle */
	FUNC6(0x0014, par->lcr + LCR_LCDCCRC); /* STOP_CKP */
	FUNC1(5); /* wait for device to settle */
	FUNC6(0x0015, par->lcr + LCR_LCDCCRC); /* STOP_CKP|SOFT_RESET*/
	FUNC6(0xfffa, par->lcr + LCR_VCS);
}