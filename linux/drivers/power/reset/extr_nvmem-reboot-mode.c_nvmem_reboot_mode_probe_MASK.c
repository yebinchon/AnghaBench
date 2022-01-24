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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  write; int /*<<< orphan*/ * dev; } ;
struct nvmem_reboot_mode {TYPE_1__ reboot; int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct nvmem_reboot_mode* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  nvmem_reboot_mode_write ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int ret;
	struct nvmem_reboot_mode *nvmem_rbm;

	nvmem_rbm = FUNC3(&pdev->dev, sizeof(*nvmem_rbm), GFP_KERNEL);
	if (!nvmem_rbm)
		return -ENOMEM;

	nvmem_rbm->reboot.dev = &pdev->dev;
	nvmem_rbm->reboot.write = nvmem_reboot_mode_write;

	nvmem_rbm->cell = FUNC4(&pdev->dev, "reboot-mode");
	if (FUNC0(nvmem_rbm->cell)) {
		FUNC2(&pdev->dev, "failed to get the nvmem cell reboot-mode\n");
		return FUNC1(nvmem_rbm->cell);
	}

	ret = FUNC5(&pdev->dev, &nvmem_rbm->reboot);
	if (ret)
		FUNC2(&pdev->dev, "can't register reboot mode\n");

	return ret;
}