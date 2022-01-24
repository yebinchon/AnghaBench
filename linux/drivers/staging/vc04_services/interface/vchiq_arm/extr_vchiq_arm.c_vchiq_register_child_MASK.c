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
struct platform_device_info {char const* name; int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  id; int /*<<< orphan*/ * parent; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pdevinfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device_info*,int /*<<< orphan*/ ,int) ; 
 struct platform_device* FUNC4 (struct platform_device_info*) ; 

__attribute__((used)) static struct platform_device *
FUNC5(struct platform_device *pdev, const char *name)
{
	struct platform_device_info pdevinfo;
	struct platform_device *child;

	FUNC3(&pdevinfo, 0, sizeof(pdevinfo));

	pdevinfo.parent = &pdev->dev;
	pdevinfo.name = name;
	pdevinfo.id = PLATFORM_DEVID_NONE;
	pdevinfo.dma_mask = FUNC0(32);

	child = FUNC4(&pdevinfo);
	if (FUNC1(child)) {
		FUNC2(&pdev->dev, "%s not registered\n", name);
		child = NULL;
	}

	return child;
}