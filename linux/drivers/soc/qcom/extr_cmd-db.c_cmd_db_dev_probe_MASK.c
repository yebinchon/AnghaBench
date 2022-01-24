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
struct reserved_mem {int /*<<< orphan*/  size; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MEMREMAP_WB ; 
 int /*<<< orphan*/ * cmd_db_header ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct reserved_mem* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct reserved_mem *rmem;
	int ret = 0;

	rmem = FUNC3(pdev->dev.of_node);
	if (!rmem) {
		FUNC1(&pdev->dev, "failed to acquire memory region\n");
		return -EINVAL;
	}

	cmd_db_header = FUNC2(rmem->base, rmem->size, MEMREMAP_WB);
	if (!cmd_db_header) {
		ret = -ENOMEM;
		cmd_db_header = NULL;
		return ret;
	}

	if (!FUNC0(cmd_db_header)) {
		FUNC1(&pdev->dev, "Invalid Command DB Magic\n");
		return -EINVAL;
	}

	return 0;
}