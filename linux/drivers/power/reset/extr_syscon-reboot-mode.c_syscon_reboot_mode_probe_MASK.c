#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  write; TYPE_2__* dev; } ;
struct syscon_reboot_mode {int mask; int offset; TYPE_3__ reboot; int /*<<< orphan*/  map; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 struct syscon_reboot_mode* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  syscon_reboot_mode_write ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int ret;
	struct syscon_reboot_mode *syscon_rbm;

	syscon_rbm = FUNC3(&pdev->dev, sizeof(*syscon_rbm), GFP_KERNEL);
	if (!syscon_rbm)
		return -ENOMEM;

	syscon_rbm->reboot.dev = &pdev->dev;
	syscon_rbm->reboot.write = syscon_reboot_mode_write;
	syscon_rbm->mask = 0xffffffff;

	syscon_rbm->map = FUNC6(pdev->dev.parent->of_node);
	if (FUNC0(syscon_rbm->map))
		return FUNC1(syscon_rbm->map);

	if (FUNC5(pdev->dev.of_node, "offset",
	    &syscon_rbm->offset))
		return -EINVAL;

	FUNC5(pdev->dev.of_node, "mask", &syscon_rbm->mask);

	ret = FUNC4(&pdev->dev, &syscon_rbm->reboot);
	if (ret)
		FUNC2(&pdev->dev, "can't register reboot mode\n");

	return ret;
}