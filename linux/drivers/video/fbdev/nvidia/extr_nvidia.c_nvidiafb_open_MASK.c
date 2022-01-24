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
struct nvidia_par {int /*<<< orphan*/  open_count; int /*<<< orphan*/  initial_state; } ;
struct fb_info {struct nvidia_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvidia_par*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvidia_par*) ; 

__attribute__((used)) static int FUNC2(struct fb_info *info, int user)
{
	struct nvidia_par *par = info->par;

	if (!par->open_count) {
		FUNC1(par);
		FUNC0(par, &par->initial_state);
	}

	par->open_count++;
	return 0;
}