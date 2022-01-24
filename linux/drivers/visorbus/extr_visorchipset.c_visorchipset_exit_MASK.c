#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct acpi_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  controlvm_channel; TYPE_2__* acpi_device; int /*<<< orphan*/  periodic_controlvm_work; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* chipset_dev ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  visorchipset_dev_groups ; 

__attribute__((used)) static int FUNC5(struct acpi_device *acpi_device)
{
	FUNC3();
	FUNC0(&chipset_dev->periodic_controlvm_work);
	FUNC2(&chipset_dev->acpi_device->dev.kobj,
			    visorchipset_dev_groups);
	FUNC4(chipset_dev->controlvm_channel);
	FUNC1(chipset_dev);
	return 0;
}