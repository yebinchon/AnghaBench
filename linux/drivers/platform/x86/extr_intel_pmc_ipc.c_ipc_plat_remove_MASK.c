#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dev; int /*<<< orphan*/  telemetry_dev; int /*<<< orphan*/  punit_dev; int /*<<< orphan*/  tco_dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  intel_ipc_group ; 
 TYPE_1__ ipcdev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	FUNC2(&pdev->dev.kobj, &intel_ipc_group);
	FUNC0(&pdev->dev, ipcdev.irq, &ipcdev);
	FUNC1(ipcdev.tco_dev);
	FUNC1(ipcdev.punit_dev);
	FUNC1(ipcdev.telemetry_dev);
	ipcdev.dev = NULL;
	return 0;
}