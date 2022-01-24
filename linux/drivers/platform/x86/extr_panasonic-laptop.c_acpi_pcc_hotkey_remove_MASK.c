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
struct pcc_acpi {struct pcc_acpi* sinf; int /*<<< orphan*/  input_dev; int /*<<< orphan*/  backlight; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 struct pcc_acpi* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pcc_acpi*) ; 
 int /*<<< orphan*/  pcc_attr_group ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct acpi_device *device)
{
	struct pcc_acpi *pcc = FUNC0(device);

	if (!device || !pcc)
		return -EINVAL;

	FUNC4(&device->dev.kobj, &pcc_attr_group);

	FUNC1(pcc->backlight);

	FUNC2(pcc->input_dev);

	FUNC3(pcc->sinf);
	FUNC3(pcc);

	return 0;
}