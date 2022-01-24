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
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  pcu_base ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zx_restart_nb ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	int err;

	base = FUNC4(np, 0);
	if (!base) {
		FUNC0(1, "failed to map base address");
		return -ENODEV;
	}

	np = FUNC3(NULL, NULL, "zte,zx296702-pcu");
	pcu_base = FUNC4(np, 0);
	FUNC5(np);
	if (!pcu_base) {
		FUNC2(base);
		FUNC0(1, "failed to map pcu_base address");
		return -ENODEV;
	}

	err = FUNC6(&zx_restart_nb);
	if (err) {
		FUNC2(base);
		FUNC2(pcu_base);
		FUNC1(&pdev->dev, "Register restart handler failed(err=%d)\n",
			err);
	}

	return err;
}