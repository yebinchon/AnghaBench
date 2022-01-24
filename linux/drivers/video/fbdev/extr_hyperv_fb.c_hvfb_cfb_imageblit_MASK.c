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
struct hvfb_par {scalar_t__ synchronous_fb; } ;
struct fb_info {struct hvfb_par* par; } ;
struct fb_image {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*,struct fb_image const*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 

__attribute__((used)) static void FUNC2(struct fb_info *p,
			       const struct fb_image *image)
{
	struct hvfb_par *par = p->par;

	FUNC0(p, image);
	if (par->synchronous_fb)
		FUNC1(p);
}