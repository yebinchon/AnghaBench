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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sun8i_v3s_pinctrl_data ; 
 int FUNC1 (struct platform_device*,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	unsigned long variant = (unsigned long)FUNC0(&pdev->dev);

	return FUNC1(pdev, &sun8i_v3s_pinctrl_data,
					       variant);
}