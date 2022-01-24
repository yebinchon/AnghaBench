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
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_2__ {struct acpi_device* touchscreen_adev; struct acpi_device* pnp0c0d_adev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BUTTON_HID_LID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  SPI_CTL_OBJ_NAME ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_device**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 TYPE_1__ s3_wmi ; 
 int /*<<< orphan*/  s3_wmi_attach_spi_device ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct device *dev, void *data)
{
	struct acpi_device *adev, *ts_adev = NULL;
	acpi_handle handle;
	acpi_status status;

	/* ignore non ACPI devices */
	handle = FUNC1(dev);
	if (!handle || FUNC2(handle, &adev))
		return 0;

	/* check for LID ACPI switch */
	if (!FUNC7(ACPI_BUTTON_HID_LID, FUNC4(adev))) {
		s3_wmi.pnp0c0d_adev = adev;
		return 0;
	}

	/* ignore non SPI controllers */
	if (FUNC9(FUNC3(adev), SPI_CTL_OBJ_NAME,
	    FUNC8(SPI_CTL_OBJ_NAME)))
		return 0;

	status = FUNC5(ACPI_TYPE_DEVICE, handle, 1,
				     s3_wmi_attach_spi_device, NULL,
				     &ts_adev, NULL);
	if (FUNC0(status))
		FUNC6(dev, "failed to enumerate SPI slaves\n");

	if (!ts_adev)
		return 0;

	s3_wmi.touchscreen_adev = ts_adev;

	return 0;
}