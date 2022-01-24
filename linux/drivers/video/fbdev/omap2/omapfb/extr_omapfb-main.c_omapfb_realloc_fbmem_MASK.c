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
struct omapfb_info {int /*<<< orphan*/  id; struct omapfb2_mem_region* region; struct omapfb2_device* fbdev; } ;
struct omapfb2_mem_region {unsigned long size; unsigned long paddr; int type; } ;
struct omapfb2_device {int dummy; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {struct fb_var_screeninfo var; } ;
typedef  int /*<<< orphan*/  new_var ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 struct omapfb_info* FUNC1 (struct fb_info*) ; 
 int OMAPFB_MEMTYPE_SDRAM ; 
 unsigned long FUNC2 (unsigned long) ; 
 int FUNC3 (struct fb_info*,struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_var_screeninfo*,struct fb_var_screeninfo*,int) ; 
 int FUNC6 (struct fb_info*,unsigned long,unsigned long) ; 
 int FUNC7 (struct fb_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_info*) ; 
 int FUNC9 (struct omapfb2_device*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct fb_info*) ; 
 int FUNC12 (struct fb_info*) ; 

int FUNC13(struct fb_info *fbi, unsigned long size, int type)
{
	struct omapfb_info *ofbi = FUNC1(fbi);
	struct omapfb2_device *fbdev = ofbi->fbdev;
	struct omapfb2_mem_region *rg = ofbi->region;
	unsigned long old_size = rg->size;
	unsigned long old_paddr = rg->paddr;
	int old_type = rg->type;
	int r;

	if (type != OMAPFB_MEMTYPE_SDRAM)
		return -EINVAL;

	size = FUNC2(size);

	if (old_size == size && old_type == type)
		return 0;

	FUNC10(fbi);

	if (size == 0) {
		FUNC4(fbi);
		return 0;
	}

	r = FUNC6(fbi, size, 0);

	if (r) {
		if (old_size)
			FUNC6(fbi, old_size, old_paddr);

		if (rg->size == 0)
			FUNC4(fbi);

		return r;
	}

	if (old_size == size)
		return 0;

	if (old_size == 0) {
		FUNC0("initializing fb %d\n", ofbi->id);
		r = FUNC9(fbdev, fbi);
		if (r) {
			FUNC0("omapfb_fb_init failed\n");
			goto err;
		}
		r = FUNC7(fbi, 1);
		if (r) {
			FUNC0("omapfb_apply_changes failed\n");
			goto err;
		}
	} else {
		struct fb_var_screeninfo new_var;
		FUNC5(&new_var, &fbi->var, sizeof(new_var));
		r = FUNC3(fbi, &new_var);
		if (r)
			goto err;
		FUNC5(&fbi->var, &new_var, sizeof(fbi->var));
		FUNC11(fbi);
		r = FUNC12(fbi);
		if (r)
			goto err;
	}

	FUNC8(fbi);

	return 0;
err:
	FUNC10(fbi);
	FUNC4(fbi);
	return r;
}