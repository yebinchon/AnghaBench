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
struct i740fb_par {int /*<<< orphan*/  open_lock; int /*<<< orphan*/  ref_count; } ;
struct fb_info {struct i740fb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct fb_info *info, int user)
{
	struct i740fb_par *par = info->par;

	FUNC0(&(par->open_lock));
	par->ref_count++;
	FUNC1(&(par->open_lock));

	return 0;
}