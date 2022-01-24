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
typedef  int /*<<< orphan*/  u32 ;
struct tx2_uncore_pmu {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  present; } ;
struct acpi_device {TYPE_1__ status; } ;
typedef  enum tx2_uncore_type { ____Placeholder_tx2_uncore_type } tx2_uncore_type ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int PMU_TYPE_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 scalar_t__ FUNC1 (struct acpi_device*) ; 
 int FUNC2 (struct acpi_device*) ; 
 scalar_t__ FUNC3 (struct tx2_uncore_pmu*) ; 
 struct tx2_uncore_pmu* FUNC4 (struct device*,int /*<<< orphan*/ ,struct acpi_device*,int) ; 

__attribute__((used)) static acpi_status FUNC5(acpi_handle handle, u32 level,
				    void *data, void **return_value)
{
	struct tx2_uncore_pmu *tx2_pmu;
	struct acpi_device *adev;
	enum tx2_uncore_type type;

	if (FUNC0(handle, &adev))
		return AE_OK;
	if (FUNC1(adev) || !adev->status.present)
		return AE_OK;

	type = FUNC2(adev);
	if (type == PMU_TYPE_INVALID)
		return AE_OK;

	tx2_pmu = FUNC4((struct device *)data,
			handle, adev, type);

	if (!tx2_pmu)
		return AE_ERROR;

	if (FUNC3(tx2_pmu)) {
		/* Can't add the PMU device, abort */
		return AE_ERROR;
	}
	return AE_OK;
}