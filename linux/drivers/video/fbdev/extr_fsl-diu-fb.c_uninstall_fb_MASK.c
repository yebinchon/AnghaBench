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
struct mfb_info {scalar_t__ registered; } ;
struct fb_info {int /*<<< orphan*/  cmap; struct mfb_info* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 

__attribute__((used)) static void FUNC3(struct fb_info *info)
{
	struct mfb_info *mfbi = info->par;

	if (!mfbi->registered)
		return;

	FUNC2(info);
	FUNC1(info);
	FUNC0(&info->cmap);

	mfbi->registered = 0;
}