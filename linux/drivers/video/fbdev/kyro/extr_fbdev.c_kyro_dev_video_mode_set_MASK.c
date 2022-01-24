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
struct kyrofb_info {int /*<<< orphan*/  PIXCLK; int /*<<< orphan*/  VSP; int /*<<< orphan*/  HSP; } ;
struct TYPE_3__ {int bits_per_pixel; int xres; int yres; } ;
struct fb_info {TYPE_1__ var; struct kyrofb_info* par; } ;
struct TYPE_4__ {int ulNextFreeVidMem; scalar_t__ ulOverlayOffset; int /*<<< orphan*/  pSTGReg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct kyrofb_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__ deviceInfo ; 

__attribute__((used)) static int FUNC8(struct fb_info *info)
{
	struct kyrofb_info *par = info->par;

	/* Turn off display */
	FUNC7(deviceInfo.pSTGReg);
	FUNC0(deviceInfo.pSTGReg);

	/* Bring us out of VGA and into Hi-Res mode, if not already. */
	FUNC1(deviceInfo.pSTGReg);

	if (FUNC3(deviceInfo.pSTGReg,
			     info->var.bits_per_pixel,
			     info->var.xres, info->var.yres,
			     par->HSP, par->VSP, &par->PIXCLK) < 0)
		return -EINVAL;

	FUNC5(deviceInfo.pSTGReg, par);

	FUNC4(deviceInfo.pSTGReg);

	/* Turn on display in new mode */
	FUNC2(deviceInfo.pSTGReg);
	FUNC6(deviceInfo.pSTGReg);

	deviceInfo.ulNextFreeVidMem = info->var.xres * info->var.yres *
				      info->var.bits_per_pixel;
	deviceInfo.ulOverlayOffset = 0;

	return 0;
}