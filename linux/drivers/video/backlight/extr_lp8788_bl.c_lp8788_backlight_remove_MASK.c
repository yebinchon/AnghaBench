#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_2__ dev; } ;
struct lp8788_bl {struct backlight_device* bl_dev; } ;
struct TYPE_3__ {scalar_t__ brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  lp8788_attr_group ; 
 int /*<<< orphan*/  FUNC1 (struct lp8788_bl*) ; 
 struct lp8788_bl* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct lp8788_bl *bl = FUNC2(pdev);
	struct backlight_device *bl_dev = bl->bl_dev;

	bl_dev->props.brightness = 0;
	FUNC0(bl_dev);
	FUNC3(&pdev->dev.kobj, &lp8788_attr_group);
	FUNC1(bl);

	return 0;
}