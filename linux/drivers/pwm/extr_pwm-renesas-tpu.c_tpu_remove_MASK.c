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
struct tpu_device {int /*<<< orphan*/  chip; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct tpu_device* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct tpu_device *tpu = FUNC0(pdev);
	int ret;

	ret = FUNC2(&tpu->chip);
	if (ret)
		return ret;

	FUNC1(&pdev->dev);

	return 0;
}