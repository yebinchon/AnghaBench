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
struct platform_device {int /*<<< orphan*/ * resource; int /*<<< orphan*/  dev; } ;
struct ffb_par {int /*<<< orphan*/  dac; int /*<<< orphan*/  fbc; } ;
struct ffb_fbc {int dummy; } ;
struct ffb_dac {int dummy; } ;
struct fb_info {int /*<<< orphan*/  cmap; struct ffb_par* par; } ;

/* Variables and functions */
 struct fb_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *op)
{
	struct fb_info *info = FUNC0(&op->dev);
	struct ffb_par *par = info->par;

	FUNC4(info);
	FUNC1(&info->cmap);

	FUNC3(&op->resource[2], par->fbc, sizeof(struct ffb_fbc));
	FUNC3(&op->resource[1], par->dac, sizeof(struct ffb_dac));

	FUNC2(info);

	return 0;
}