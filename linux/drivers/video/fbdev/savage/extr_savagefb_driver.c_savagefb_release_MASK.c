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
struct savagefb_par {int open_count; int /*<<< orphan*/  open_lock; int /*<<< orphan*/  vgastate; int /*<<< orphan*/  initial; } ;
struct fb_info {struct savagefb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct savagefb_par*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct fb_info *info, int user)
{
	struct savagefb_par *par = info->par;

	FUNC0(&par->open_lock);

	if (par->open_count == 1) {
		FUNC3(par, &par->initial);
		FUNC2(&par->vgastate);
	}

	par->open_count--;
	FUNC1(&par->open_lock);
	return 0;
}