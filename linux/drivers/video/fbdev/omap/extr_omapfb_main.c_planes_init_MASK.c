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
struct TYPE_5__ {int /*<<< orphan*/  out_height; int /*<<< orphan*/  out_width; int /*<<< orphan*/  mirror; } ;
struct omapfb_plane_struct {int idx; TYPE_2__ info; struct omapfb_device* fbdev; } ;
struct TYPE_4__ {int region_cnt; } ;
struct omapfb_device {struct fb_info** fb_info; int /*<<< orphan*/  dev; TYPE_1__ mem_desc; } ;
struct TYPE_6__ {int /*<<< orphan*/  yres; int /*<<< orphan*/  xres; } ;
struct fb_info {TYPE_3__ var; struct omapfb_plane_struct* par; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  def_mirror ; 
 int FUNC0 (struct omapfb_device*,struct fb_info*) ; 
 struct fb_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct omapfb_device*) ; 

__attribute__((used)) static int FUNC4(struct omapfb_device *fbdev)
{
	struct fb_info *fbi;
	int i;
	int r;

	for (i = 0; i < fbdev->mem_desc.region_cnt; i++) {
		struct omapfb_plane_struct *plane;
		fbi = FUNC1(sizeof(struct omapfb_plane_struct),
					fbdev->dev);
		if (fbi == NULL) {
			FUNC3(fbdev);
			return -ENOMEM;
		}
		plane = fbi->par;
		plane->idx = i;
		plane->fbdev = fbdev;
		plane->info.mirror = def_mirror;
		fbdev->fb_info[i] = fbi;

		if ((r = FUNC0(fbdev, fbi)) < 0) {
			FUNC2(fbi);
			FUNC3(fbdev);
			return r;
		}
		plane->info.out_width = fbi->var.xres;
		plane->info.out_height = fbi->var.yres;
	}
	return 0;
}