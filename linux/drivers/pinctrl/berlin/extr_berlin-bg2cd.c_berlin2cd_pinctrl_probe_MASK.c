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
struct of_device_id {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  berlin2cd_pinctrl_match ; 
 int FUNC0 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	const struct of_device_id *match =
		FUNC1(berlin2cd_pinctrl_match, &pdev->dev);

	return FUNC0(pdev, match->data);
}