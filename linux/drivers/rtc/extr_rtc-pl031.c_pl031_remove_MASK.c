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
struct pl031_local {int dummy; } ;
struct amba_device {scalar_t__* irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amba_device*) ; 
 struct pl031_local* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct pl031_local*) ; 

__attribute__((used)) static int FUNC5(struct amba_device *adev)
{
	struct pl031_local *ldata = FUNC1(&adev->dev);

	FUNC2(&adev->dev);
	FUNC3(&adev->dev, false);
	if (adev->irq[0])
		FUNC4(adev->irq[0], ldata);
	FUNC0(adev);

	return 0;
}