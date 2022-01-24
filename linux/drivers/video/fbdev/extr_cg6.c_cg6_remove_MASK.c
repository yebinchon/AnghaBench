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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fb_info {int /*<<< orphan*/  cmap; struct cg6_par* par; } ;
struct cg6_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct platform_device*,struct fb_info*,struct cg6_par*) ; 
 struct fb_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *op)
{
	struct fb_info *info = FUNC1(&op->dev);
	struct cg6_par *par = info->par;

	FUNC4(info);
	FUNC2(&info->cmap);

	FUNC0(op, info, par);

	FUNC3(info);

	return 0;
}