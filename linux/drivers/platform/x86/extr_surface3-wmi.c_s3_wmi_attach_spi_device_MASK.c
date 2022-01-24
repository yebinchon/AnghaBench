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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  SPI_TS_OBJ_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status FUNC5(acpi_handle handle,
					    u32 level,
					    void *data,
					    void **return_value)
{
	struct acpi_device *adev, **ts_adev;

	if (FUNC0(handle, &adev))
		return AE_OK;

	ts_adev = data;

	if (FUNC4(FUNC1(adev), SPI_TS_OBJ_NAME,
	    FUNC3(SPI_TS_OBJ_NAME)))
		return AE_OK;

	if (*ts_adev) {
		FUNC2("duplicate entry %s\n", SPI_TS_OBJ_NAME);
		return AE_OK;
	}

	*ts_adev = adev;

	return AE_OK;
}