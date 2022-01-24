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
struct s3c2410fb_info {int /*<<< orphan*/  dev; } ;
struct s3c2410fb_hw {int lcdcon5; int lcdcon2; int lcdcon3; int /*<<< orphan*/  lcdcon4; int /*<<< orphan*/  lcdcon1; } ;
struct fb_var_screeninfo {int bits_per_pixel; scalar_t__ hsync_len; scalar_t__ xres; scalar_t__ left_margin; scalar_t__ right_margin; scalar_t__ vsync_len; scalar_t__ lower_margin; scalar_t__ upper_margin; scalar_t__ yres; } ;
struct fb_info {struct fb_var_screeninfo var; struct s3c2410fb_info* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_LCDCON1_TFT16BPP ; 
 int /*<<< orphan*/  S3C2410_LCDCON1_TFT1BPP ; 
 int /*<<< orphan*/  S3C2410_LCDCON1_TFT24BPP ; 
 int /*<<< orphan*/  S3C2410_LCDCON1_TFT2BPP ; 
 int /*<<< orphan*/  S3C2410_LCDCON1_TFT4BPP ; 
 int /*<<< orphan*/  S3C2410_LCDCON1_TFT8BPP ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int S3C2410_LCDCON5_BPP24BL ; 
 int S3C2410_LCDCON5_BSWP ; 
 int S3C2410_LCDCON5_FRM565 ; 
 int S3C2410_LCDCON5_HWSWP ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC10(const struct fb_info *info,
					     struct s3c2410fb_hw *regs)
{
	const struct s3c2410fb_info *fbi = info->par;
	const struct fb_var_screeninfo *var = &info->var;

	switch (var->bits_per_pixel) {
	case 1:
		regs->lcdcon1 |= S3C2410_LCDCON1_TFT1BPP;
		break;
	case 2:
		regs->lcdcon1 |= S3C2410_LCDCON1_TFT2BPP;
		break;
	case 4:
		regs->lcdcon1 |= S3C2410_LCDCON1_TFT4BPP;
		break;
	case 8:
		regs->lcdcon1 |= S3C2410_LCDCON1_TFT8BPP;
		regs->lcdcon5 |= S3C2410_LCDCON5_BSWP |
				 S3C2410_LCDCON5_FRM565;
		regs->lcdcon5 &= ~S3C2410_LCDCON5_HWSWP;
		break;
	case 16:
		regs->lcdcon1 |= S3C2410_LCDCON1_TFT16BPP;
		regs->lcdcon5 &= ~S3C2410_LCDCON5_BSWP;
		regs->lcdcon5 |= S3C2410_LCDCON5_HWSWP;
		break;
	case 32:
		regs->lcdcon1 |= S3C2410_LCDCON1_TFT24BPP;
		regs->lcdcon5 &= ~(S3C2410_LCDCON5_BSWP |
				   S3C2410_LCDCON5_HWSWP |
				   S3C2410_LCDCON5_BPP24BL);
		break;
	default:
		/* invalid pixel depth */
		FUNC8(fbi->dev, "invalid bpp %d\n",
			var->bits_per_pixel);
	}
	/* update X/Y info */
	FUNC9("setting vert: up=%d, low=%d, sync=%d\n",
		var->upper_margin, var->lower_margin, var->vsync_len);

	FUNC9("setting horz: lft=%d, rt=%d, sync=%d\n",
		var->left_margin, var->right_margin, var->hsync_len);

	regs->lcdcon2 = FUNC0(var->yres - 1) |
			FUNC1(var->upper_margin - 1) |
			FUNC2(var->lower_margin - 1) |
			FUNC3(var->vsync_len - 1);

	regs->lcdcon3 = FUNC4(var->right_margin - 1) |
			FUNC5(var->left_margin - 1) |
			FUNC6(var->xres - 1);

	regs->lcdcon4 = FUNC7(var->hsync_len - 1);
}