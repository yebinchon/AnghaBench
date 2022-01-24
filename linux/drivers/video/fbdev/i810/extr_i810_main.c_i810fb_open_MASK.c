#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vgastate {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  vgabase; int /*<<< orphan*/  flags; } ;
struct i810fb_par {scalar_t__ use_count; int /*<<< orphan*/  open_lock; TYPE_1__ state; int /*<<< orphan*/  mmio_start_virtual; } ;
struct fb_info {struct i810fb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  VGA_SAVE_CMAP ; 
 int /*<<< orphan*/  FUNC0 (struct i810fb_par*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct fb_info *info, int user)
{
	struct i810fb_par *par = info->par;

	FUNC2(&par->open_lock);
	if (par->use_count == 0) {
		FUNC1(&par->state, 0, sizeof(struct vgastate));
		par->state.flags = VGA_SAVE_CMAP;
		par->state.vgabase = par->mmio_start_virtual;
		FUNC4(&par->state);

		FUNC0(par);
	}

	par->use_count++;
	FUNC3(&par->open_lock);
	
	return 0;
}