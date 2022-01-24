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
 int /*<<< orphan*/  dev_attr_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	FUNC0(&pdev->dev, &dev_attr_state);
	FUNC2(pdev);
	FUNC1(pdev, NULL);

	return 0;
}