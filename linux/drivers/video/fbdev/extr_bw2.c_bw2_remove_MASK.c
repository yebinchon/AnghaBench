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
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  screen_base; struct bw2_par* par; } ;
struct bw2_regs {int dummy; } ;
struct bw2_par {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 struct fb_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *op)
{
	struct fb_info *info = FUNC0(&op->dev);
	struct bw2_par *par = info->par;

	FUNC3(info);

	FUNC2(&op->resource[0], par->regs, sizeof(struct bw2_regs));
	FUNC2(&op->resource[0], info->screen_base, info->fix.smem_len);

	FUNC1(info);

	return 0;
}