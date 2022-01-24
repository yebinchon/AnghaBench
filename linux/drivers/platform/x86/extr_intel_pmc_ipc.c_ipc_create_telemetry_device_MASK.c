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
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device_info {int id; int /*<<< orphan*/  num_res; struct resource* res; int /*<<< orphan*/  name; int /*<<< orphan*/  parent; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct platform_device* telemetry_dev; scalar_t__ telem_pmc_ssram_size; scalar_t__ telem_pmc_ssram_base; scalar_t__ telem_punit_ssram_size; scalar_t__ telem_punit_ssram_base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  TELEMETRY_DEVICE_NAME ; 
 int TELEMETRY_RESOURCE_PMC_SSRAM ; 
 int TELEMETRY_RESOURCE_PUNIT_SSRAM ; 
 TYPE_1__ ipcdev ; 
 struct platform_device* FUNC3 (struct platform_device_info const*) ; 
 struct resource* telemetry_res ; 

__attribute__((used)) static int FUNC4(void)
{
	struct platform_device *pdev;
	struct resource *res;
	const struct platform_device_info pdevinfo = {
		.parent = ipcdev.dev,
		.name = TELEMETRY_DEVICE_NAME,
		.id = -1,
		.res = telemetry_res,
		.num_res = FUNC0(telemetry_res),
		};

	res = telemetry_res + TELEMETRY_RESOURCE_PUNIT_SSRAM;
	res->start = ipcdev.telem_punit_ssram_base;
	res->end = res->start + ipcdev.telem_punit_ssram_size - 1;

	res = telemetry_res + TELEMETRY_RESOURCE_PMC_SSRAM;
	res->start = ipcdev.telem_pmc_ssram_base;
	res->end = res->start + ipcdev.telem_pmc_ssram_size - 1;

	pdev = FUNC3(&pdevinfo);
	if (FUNC1(pdev))
		return FUNC2(pdev);

	ipcdev.telemetry_dev = pdev;

	return 0;
}