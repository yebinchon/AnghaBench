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
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct nvec_chip {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ser_dev; int /*<<< orphan*/  notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISABLE_MOUSE ; 
 struct nvec_chip* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvec_chip*,int /*<<< orphan*/ *) ; 
 TYPE_2__ ps2_dev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct nvec_chip *nvec = FUNC0(pdev->dev.parent);

	FUNC2(ps2_dev.ser_dev, DISABLE_MOUSE);
	FUNC3(ps2_dev.ser_dev);
	FUNC1(nvec, &ps2_dev.notifier);
	FUNC4(ps2_dev.ser_dev);

	return 0;
}