#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dsw_present; } ;
struct TYPE_6__ {TYPE_1__ flags; } ;
struct TYPE_7__ {scalar_t__ valid; } ;
struct TYPE_8__ {int /*<<< orphan*/  prepare_count; TYPE_3__ flags; } ;
struct acpi_device {TYPE_2__ power; TYPE_4__ wakeup; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ACPI_STATE_S0 ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static bool FUNC5(struct pci_dev *dev)
{
	struct acpi_device *adev = FUNC0(&dev->dev);

	/*
	 * In some cases (eg. Samsung 305V4A) leaving a bridge in suspend over
	 * system-wide suspend/resume confuses the platform firmware, so avoid
	 * doing that.  According to Section 16.1.6 of ACPI 6.2, endpoint
	 * devices are expected to be in D3 before invoking the S3 entry path
	 * from the firmware, so they should not be affected by this issue.
	 */
	if (FUNC4(dev) && FUNC2() != ACPI_STATE_S0)
		return true;

	if (!adev || !FUNC1(adev))
		return false;

	if (adev->wakeup.flags.valid &&
	    FUNC3(&dev->dev) != !!adev->wakeup.prepare_count)
		return true;

	if (FUNC2() == ACPI_STATE_S0)
		return false;

	return !!adev->power.flags.dsw_present;
}