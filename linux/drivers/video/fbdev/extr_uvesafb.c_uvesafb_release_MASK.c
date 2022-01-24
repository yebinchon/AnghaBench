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
struct uvesafb_par {int /*<<< orphan*/  ref_count; int /*<<< orphan*/  vbe_state_orig; } ;
struct TYPE_3__ {int eax; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;
struct uvesafb_ktask {TYPE_2__ t; } ;
struct fb_info {struct uvesafb_par* par; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uvesafb_ktask*) ; 
 int /*<<< orphan*/  FUNC3 (struct uvesafb_ktask*) ; 
 struct uvesafb_ktask* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct uvesafb_par*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct fb_info *info, int user)
{
	struct uvesafb_ktask *task = NULL;
	struct uvesafb_par *par = info->par;
	int cnt = FUNC1(&par->ref_count);

	if (!cnt)
		return -EINVAL;

	if (cnt != 1)
		goto out;

	task = FUNC4();
	if (!task)
		goto out;

	/* First, try to set the standard 80x25 text mode. */
	task->t.regs.eax = 0x0003;
	FUNC2(task);

	/*
	 * Now try to restore whatever hardware state we might have
	 * saved when the fb device was first opened.
	 */
	FUNC5(par, par->vbe_state_orig);
out:
	FUNC0(&par->ref_count);
	FUNC3(task);
	return 0;
}