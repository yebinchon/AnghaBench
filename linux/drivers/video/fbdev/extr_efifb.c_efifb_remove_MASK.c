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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  efifb_groups ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 struct fb_info* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct fb_info *info = FUNC1(pdev);

	FUNC3(info);
	FUNC2(&pdev->dev.kobj, efifb_groups);
	FUNC0(info);

	return 0;
}