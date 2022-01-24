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
struct metronomefb_par {int dummy; } ;
struct fb_info {struct metronomefb_par* par; } ;
struct fb_image {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct metronomefb_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,struct fb_image const*) ; 

__attribute__((used)) static void FUNC2(struct fb_info *info,
				const struct fb_image *image)
{
	struct metronomefb_par *par = info->par;

	FUNC1(info, image);
	FUNC0(par);
}