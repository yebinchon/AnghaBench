#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/ * resource; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  screen_base; int /*<<< orphan*/  cmap; struct cg3_par* par; } ;
struct cg3_regs {int dummy; } ;
struct cg3_par {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 struct fb_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *op)
{
	struct fb_info *info = FUNC0(&op->dev);
	struct cg3_par *par = info->par;

	FUNC4(info);
	FUNC1(&info->cmap);

	FUNC3(&op->resource[0], par->regs, sizeof(struct cg3_regs));
	FUNC3(&op->resource[0], info->screen_base, info->fix.smem_len);

	FUNC2(info);

	return 0;
}