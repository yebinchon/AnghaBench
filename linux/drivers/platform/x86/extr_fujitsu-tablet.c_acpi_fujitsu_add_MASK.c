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
struct acpi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  io_length; int /*<<< orphan*/  io_base; int /*<<< orphan*/  irq; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* ACPI_FUJITSU_CLASS ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  METHOD_NAME__CRS ; 
 int /*<<< orphan*/  MODULENAME ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 char* FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ fujitsu ; 
 int /*<<< orphan*/  fujitsu_interrupt ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  fujitsu_walk_resources ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC13(struct acpi_device *adev)
{
	acpi_status status;
	int error;

	if (!adev)
		return -EINVAL;

	status = FUNC4(adev->handle, METHOD_NAME__CRS,
			fujitsu_walk_resources, NULL);
	if (FUNC0(status) || !fujitsu.irq || !fujitsu.io_base)
		return -ENODEV;

	FUNC12(FUNC3(adev), "Fujitsu %s", FUNC2(adev));
	FUNC12(FUNC1(adev), "%s", ACPI_FUJITSU_CLASS);

	FUNC11(fujitsu.phys, sizeof(fujitsu.phys),
			"%s/input0", FUNC2(adev));

	error = FUNC7(&adev->dev,
		FUNC3(adev), fujitsu.phys);
	if (error)
		return error;

	if (!FUNC10(fujitsu.io_base, fujitsu.io_length, MODULENAME)) {
		FUNC6();
		return -EBUSY;
	}

	FUNC5();

	error = FUNC9(fujitsu.irq, fujitsu_interrupt,
			IRQF_SHARED, MODULENAME, fujitsu_interrupt);
	if (error) {
		FUNC8(fujitsu.io_base, fujitsu.io_length);
		FUNC6();
		return error;
	}

	return 0;
}