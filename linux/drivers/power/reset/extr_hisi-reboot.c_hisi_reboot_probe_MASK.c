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
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  hisi_restart_nb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  reboot_offset ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	int err;

	base = FUNC3(np, 0);
	if (!base) {
		FUNC0(1, "failed to map base address");
		return -ENODEV;
	}

	if (FUNC4(np, "reboot-offset", &reboot_offset) < 0) {
		FUNC5("failed to find reboot-offset property\n");
		FUNC2(base);
		return -EINVAL;
	}

	err = FUNC6(&hisi_restart_nb);
	if (err) {
		FUNC1(&pdev->dev, "cannot register restart handler (err=%d)\n",
			err);
		FUNC2(base);
	}

	return err;
}