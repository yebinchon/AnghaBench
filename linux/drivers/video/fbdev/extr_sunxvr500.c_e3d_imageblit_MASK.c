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
struct fb_info {int /*<<< orphan*/  screen_base; struct e3d_info* par; } ;
struct fb_image {int dummy; } ;
struct e3d_info {int /*<<< orphan*/  lock; scalar_t__ fb8_buf_diff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*,struct fb_image const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct fb_info *info, const struct fb_image *image)
{
	struct e3d_info *ep = info->par;
	unsigned long flags;

	FUNC1(&ep->lock, flags);
	FUNC0(info, image);
	info->screen_base += ep->fb8_buf_diff;
	FUNC0(info, image);
	info->screen_base -= ep->fb8_buf_diff;
	FUNC2(&ep->lock, flags);
}