#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ipaq_micro {int dummy; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct backlight_device*) ; 
 struct ipaq_micro* FUNC3 (int /*<<< orphan*/ ) ; 
 struct backlight_device* FUNC4 (TYPE_1__*,char*,TYPE_1__*,struct ipaq_micro*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  micro_bl_ops ; 
 int /*<<< orphan*/  micro_bl_props ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct backlight_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct backlight_device *bd;
	struct ipaq_micro *micro = FUNC3(pdev->dev.parent);

	bd = FUNC4(&pdev->dev, "ipaq-micro-backlight",
					    &pdev->dev, micro, &micro_bl_ops,
					    &micro_bl_props);
	if (FUNC0(bd))
		return FUNC1(bd);

	FUNC5(pdev, bd);
	FUNC2(bd);

	return 0;
}