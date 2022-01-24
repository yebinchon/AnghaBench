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
struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int /*<<< orphan*/  member_0; } ;
typedef  unsigned long long u8 ;
struct lis3lv02d {struct acpi_device* bus_priv; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct acpi_object_list*,unsigned long long*) ; 

__attribute__((used)) static int FUNC2(struct lis3lv02d *lis3, int reg, u8 *ret)
{
	struct acpi_device *dev = lis3->bus_priv;
	union acpi_object arg0 = { ACPI_TYPE_INTEGER };
	struct acpi_object_list args = { 1, &arg0 };
	unsigned long long lret;
	acpi_status status;

	arg0.integer.value = reg;

	status = FUNC1(dev->handle, "ALRD", &args, &lret);
	if (FUNC0(status))
		return -EINVAL;
	*ret = lret;
	return 0;
}