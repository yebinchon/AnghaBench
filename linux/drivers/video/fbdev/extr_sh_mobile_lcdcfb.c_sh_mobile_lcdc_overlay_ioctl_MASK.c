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
struct sh_mobile_lcdc_overlay {int /*<<< orphan*/  channel; } ;
struct fb_info {struct sh_mobile_lcdc_overlay* par; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
#define  FBIO_WAITFORVSYNC 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct fb_info *info, unsigned int cmd,
				      unsigned long arg)
{
	struct sh_mobile_lcdc_overlay *ovl = info->par;

	switch (cmd) {
	case FBIO_WAITFORVSYNC:
		return FUNC0(ovl->channel);

	default:
		return -ENOIOCTLCMD;
	}
}