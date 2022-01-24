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
struct ssd1307fb_par {int dummy; } ;
struct fb_info {struct ssd1307fb_par* par; } ;
struct fb_fillrect {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssd1307fb_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,struct fb_fillrect const*) ; 

__attribute__((used)) static void FUNC2(struct fb_info *info, const struct fb_fillrect *rect)
{
	struct ssd1307fb_par *par = info->par;
	FUNC1(info, rect);
	FUNC0(par);
}