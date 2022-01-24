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
typedef  int /*<<< orphan*/  u_char ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {scalar_t__ smem_start; } ;
struct TYPE_4__ {int length; scalar_t__ offset; } ;
struct TYPE_5__ {TYPE_1__ red; TYPE_1__ blue; TYPE_1__ green; } ;
struct fb_info {int /*<<< orphan*/  cmap; TYPE_3__ fix; int /*<<< orphan*/ * screen_base; TYPE_2__ var; int /*<<< orphan*/ * fbops; } ;

/* Variables and functions */
 int AD_BLT ; 
 int /*<<< orphan*/  AP_CONTROL_0 ; 
 int /*<<< orphan*/  AP_CONTROL_1 ; 
 int /*<<< orphan*/  AP_CONTROL_2 ; 
 int /*<<< orphan*/  AP_CONTROL_3A ; 
 int /*<<< orphan*/  AP_ROP_1 ; 
 int /*<<< orphan*/  AP_WRITE_ENABLE ; 
 int DST_EQ_SRC ; 
 int ENOMEM ; 
 int NORMAL_MODE ; 
 int NORM_CREG1 ; 
 int RESET_CREG ; 
 int FUNC0 (int) ; 
 int S_DATA_PLN ; 
 int /*<<< orphan*/  dn_fb_ops ; 
 TYPE_3__ dnfb_fix ; 
 TYPE_2__ dnfb_var ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fb_info* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (struct fb_info*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *dev)
{
	struct fb_info *info;
	int err = 0;

	info = FUNC3(0, &dev->dev);
	if (!info)
		return -ENOMEM;

	info->fbops = &dn_fb_ops;
	info->fix = dnfb_fix;
	info->var = dnfb_var;
	info->var.red.length = 1;
	info->var.red.offset = 0;
	info->var.green = info->var.blue = info->var.red;
	info->screen_base = (u_char *) info->fix.smem_start;

	err = FUNC1(&info->cmap, 2, 0);
	if (err < 0)
		goto release_framebuffer;

	err = FUNC9(info);
	if (err < 0) {
		FUNC2(&info->cmap);
		goto release_framebuffer;
	}
	FUNC7(dev, info);

	/* now we have registered we can safely setup the hardware */
	FUNC5(AP_CONTROL_3A, RESET_CREG);
	FUNC6(AP_WRITE_ENABLE, 0x0);
	FUNC5(AP_CONTROL_0, NORMAL_MODE);
	FUNC5(AP_CONTROL_1, (AD_BLT | DST_EQ_SRC | NORM_CREG1));
	FUNC5(AP_CONTROL_2, S_DATA_PLN);
	FUNC6(AP_ROP_1, FUNC0(0x3));

	FUNC8("apollo frame buffer alive and kicking !\n");
	return err;

release_framebuffer:
	FUNC4(info);
	return err;
}