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
struct nvidia_par {int /*<<< orphan*/  lockup; } ;
struct fb_info {scalar_t__ state; struct nvidia_par* par; } ;
struct fb_image {int depth; } ;

/* Variables and functions */
 scalar_t__ FBINFO_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*,struct fb_image const*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,struct fb_image const*) ; 

void FUNC2(struct fb_info *info, const struct fb_image *image)
{
	struct nvidia_par *par = info->par;

	if (info->state != FBINFO_STATE_RUNNING)
		return;

	if (image->depth == 1 && !par->lockup)
		FUNC1(info, image);
	else
		FUNC0(info, image);
}