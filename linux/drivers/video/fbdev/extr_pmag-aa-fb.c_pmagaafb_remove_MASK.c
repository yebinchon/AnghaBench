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
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;
struct tc_dev {TYPE_1__ resource; } ;
struct fb_info {int /*<<< orphan*/  screen_base; struct aafb_par* par; } ;
struct device {int dummy; } ;
struct aafb_par {int /*<<< orphan*/  mmio; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 struct fb_info* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 struct tc_dev* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct tc_dev *tdev = FUNC5(dev);
	struct fb_info *info = FUNC0(dev);
	struct aafb_par *par = info->par;
	resource_size_t start, len;

	FUNC3(dev);
	FUNC6(info);
	FUNC2(info->screen_base);
	FUNC2(par->mmio);
	start = tdev->resource.start;
	len = tdev->resource.end - start + 1;
	FUNC4(start, len);
	FUNC1(info);
	return 0;
}