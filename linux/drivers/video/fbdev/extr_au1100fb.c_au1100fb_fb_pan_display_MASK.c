#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct fb_var_screeninfo {int yoffset; scalar_t__ xoffset; } ;
struct TYPE_5__ {int line_length; } ;
struct TYPE_4__ {int yoffset; scalar_t__ xoffset; } ;
struct fb_info {TYPE_2__ fix; TYPE_1__ var; } ;
struct au1100fb_device {TYPE_3__* regs; int /*<<< orphan*/  panel; } ;
struct TYPE_6__ {int lcd_dmaaddr0; int lcd_dmaaddr1; } ;

/* Variables and functions */
 int EINVAL ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct au1100fb_device* FUNC3 (struct fb_info*) ; 

int FUNC4(struct fb_var_screeninfo *var, struct fb_info *fbi)
{
	struct au1100fb_device *fbdev;
	int dy;

	fbdev = FUNC3(fbi);

	FUNC2("fb_pan_display %p %p", var, fbi);

	if (!var || !fbdev) {
		return -EINVAL;
	}

	if (var->xoffset - fbi->var.xoffset) {
		/* No support for X panning for now! */
		return -EINVAL;
	}

	FUNC2("fb_pan_display 2 %p %p", var, fbi);
	dy = var->yoffset - fbi->var.yoffset;
	if (dy) {

		u32 dmaaddr;

		FUNC2("Panning screen of %d lines", dy);

		dmaaddr = fbdev->regs->lcd_dmaaddr0;
		dmaaddr += (fbi->fix.line_length * dy);

		/* TODO: Wait for current frame to finished */
		fbdev->regs->lcd_dmaaddr0 = FUNC0(dmaaddr);

		if (FUNC1(fbdev->panel)) {
			dmaaddr = fbdev->regs->lcd_dmaaddr1;
			dmaaddr += (fbi->fix.line_length * dy);
			fbdev->regs->lcd_dmaaddr0 = FUNC0(dmaaddr);
	}
	}
	FUNC2("fb_pan_display 3 %p %p", var, fbi);

	return 0;
}