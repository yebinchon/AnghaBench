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
struct fb_info {scalar_t__ par; } ;
struct atyfb_par {scalar_t__ blitter_may_be_busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atyfb_par*) ; 

__attribute__((used)) static int FUNC1(struct fb_info *info)
{
	struct atyfb_par *par = (struct atyfb_par *) info->par;

	if (par->blitter_may_be_busy)
		FUNC0(par);
	return 0;
}