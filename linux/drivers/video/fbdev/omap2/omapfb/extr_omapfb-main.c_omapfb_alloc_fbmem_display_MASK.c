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
typedef  int u16 ;
struct omapfb_info {scalar_t__ rotation_type; struct omapfb2_device* fbdev; } ;
struct omapfb2_device {int dummy; } ;
struct omap_dss_device {TYPE_1__* driver; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_resolution ) (struct omap_dss_device*,int*,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long) ; 
 struct omapfb_info* FUNC1 (struct fb_info*) ; 
 scalar_t__ OMAP_DSS_ROT_VRFB ; 
 struct omap_dss_device* FUNC2 (struct fb_info*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int FUNC5 (struct fb_info*,unsigned long,unsigned long) ; 
 int FUNC6 (struct omapfb2_device*,struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_dss_device*,int*,int*) ; 

__attribute__((used)) static int FUNC8(struct fb_info *fbi, unsigned long size,
		unsigned long paddr)
{
	struct omapfb_info *ofbi = FUNC1(fbi);
	struct omapfb2_device *fbdev = ofbi->fbdev;
	struct omap_dss_device *display;
	int bytespp;

	display =  FUNC2(fbi);

	if (!display)
		return 0;

	switch (FUNC6(fbdev, display)) {
	case 16:
		bytespp = 2;
		break;
	case 24:
		bytespp = 4;
		break;
	default:
		bytespp = 4;
		break;
	}

	if (!size) {
		u16 w, h;

		display->driver->get_resolution(display, &w, &h);

		if (ofbi->rotation_type == OMAP_DSS_ROT_VRFB) {
			size = FUNC3(FUNC4(w, h, bytespp),
					FUNC4(h, w, bytespp));

			FUNC0("adjusting fb mem size for VRFB, %u -> %lu\n",
					w * h * bytespp, size);
		} else {
			size = w * h * bytespp;
		}
	}

	if (!size)
		return 0;

	return FUNC5(fbi, size, paddr);
}