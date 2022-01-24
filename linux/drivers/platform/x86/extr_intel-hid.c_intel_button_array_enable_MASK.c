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
struct intel_hid_priv {int /*<<< orphan*/  array; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  INTEL_HID_DSM_BTNE_FN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 struct intel_hid_priv* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC6(struct device *device, bool enable)
{
	struct intel_hid_priv *priv = FUNC3(device);
	acpi_handle handle = FUNC1(device);
	unsigned long long button_cap;
	acpi_status status;

	if (!priv->array)
		return;

	/* Query supported platform features */
	status = FUNC2(handle, "BTNC", NULL, &button_cap);
	if (FUNC0(status)) {
		FUNC4(device, "failed to get button capability\n");
		return;
	}

	/* Enable|disable features - power button is always enabled */
	if (!FUNC5(handle, INTEL_HID_DSM_BTNE_FN,
				      enable ? button_cap : 1))
		FUNC4(device, "failed to set button capability\n");
}