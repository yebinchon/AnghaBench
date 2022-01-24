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
struct platform_device_info {int id; int /*<<< orphan*/  num_res; int /*<<< orphan*/  res; int /*<<< orphan*/  name; int /*<<< orphan*/  parent; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct platform_device* punit_dev; int /*<<< orphan*/  punit_res_count; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  PUNIT_DEVICE_NAME ; 
 TYPE_1__ ipcdev ; 
 struct platform_device* FUNC2 (struct platform_device_info const*) ; 
 int /*<<< orphan*/  punit_res_array ; 

__attribute__((used)) static int FUNC3(void)
{
	struct platform_device *pdev;
	const struct platform_device_info pdevinfo = {
		.parent = ipcdev.dev,
		.name = PUNIT_DEVICE_NAME,
		.id = -1,
		.res = punit_res_array,
		.num_res = ipcdev.punit_res_count,
		};

	pdev = FUNC2(&pdevinfo);
	if (FUNC0(pdev))
		return FUNC1(pdev);

	ipcdev.punit_dev = pdev;

	return 0;
}