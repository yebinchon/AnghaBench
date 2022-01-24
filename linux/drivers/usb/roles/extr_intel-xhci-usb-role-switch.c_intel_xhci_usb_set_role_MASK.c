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
typedef  int u32 ;
struct intel_xhci_usb_data {scalar_t__ base; scalar_t__ enable_sw_switch; } ;
struct device {int dummy; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 scalar_t__ AE_NOT_CONFIGURED ; 
 int DRD_CONFIG_DYNAMIC ; 
 int DRD_CONFIG_MASK ; 
 int DRD_CONFIG_STATIC_DEVICE ; 
 int DRD_CONFIG_STATIC_HOST ; 
 scalar_t__ DUAL_ROLE_CFG0 ; 
 scalar_t__ DUAL_ROLE_CFG1 ; 
 int /*<<< orphan*/  DUAL_ROLE_CFG1_POLL_TIMEOUT ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int HOST_MODE ; 
 int SW_IDPIN ; 
 int SW_IDPIN_EN ; 
 int SW_SWITCH_EN ; 
 int SW_VBUS_VALID ; 
#define  USB_ROLE_DEVICE 130 
#define  USB_ROLE_HOST 129 
#define  USB_ROLE_NONE 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct intel_xhci_usb_data* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct device *dev, enum usb_role role)
{
	struct intel_xhci_usb_data *data = FUNC4(dev);
	unsigned long timeout;
	acpi_status status;
	u32 glk, val;
	u32 drd_config = DRD_CONFIG_DYNAMIC;

	/*
	 * On many CHT devices ACPI event (_AEI) handlers read / modify /
	 * write the cfg0 register, just like we do. Take the ACPI lock
	 * to avoid us racing with the AML code.
	 */
	status = FUNC1(ACPI_WAIT_FOREVER, &glk);
	if (FUNC0(status) && status != AE_NOT_CONFIGURED) {
		FUNC3(dev, "Error could not acquire lock\n");
		return -EIO;
	}

	FUNC7(dev);

	/*
	 * Set idpin value as requested.
	 * Since some devices rely on firmware setting DRD_CONFIG and
	 * SW_SWITCH_EN bits to be zero for role switch,
	 * do not set these bits for those devices.
	 */
	val = FUNC9(data->base + DUAL_ROLE_CFG0);
	switch (role) {
	case USB_ROLE_NONE:
		val |= SW_IDPIN;
		val &= ~SW_VBUS_VALID;
		drd_config = DRD_CONFIG_DYNAMIC;
		break;
	case USB_ROLE_HOST:
		val &= ~SW_IDPIN;
		val &= ~SW_VBUS_VALID;
		drd_config = DRD_CONFIG_STATIC_HOST;
		break;
	case USB_ROLE_DEVICE:
		val |= SW_IDPIN;
		val |= SW_VBUS_VALID;
		drd_config = DRD_CONFIG_STATIC_DEVICE;
		break;
	}
	val |= SW_IDPIN_EN;
	if (data->enable_sw_switch) {
		val &= ~DRD_CONFIG_MASK;
		val |= SW_SWITCH_EN | drd_config;
	}
	FUNC12(val, data->base + DUAL_ROLE_CFG0);

	FUNC2(glk);

	/* In most case it takes about 600ms to finish mode switching */
	timeout = jiffies + FUNC6(DUAL_ROLE_CFG1_POLL_TIMEOUT);

	/* Polling on CFG1 register to confirm mode switch.*/
	do {
		val = FUNC9(data->base + DUAL_ROLE_CFG1);
		if (!!(val & HOST_MODE) == (role == USB_ROLE_HOST)) {
			FUNC8(dev);
			return 0;
		}

		/* Interval for polling is set to about 5 - 10 ms */
		FUNC11(5000, 10000);
	} while (FUNC10(jiffies, timeout));

	FUNC8(dev);

	FUNC5(dev, "Timeout waiting for role-switch\n");
	return -ETIMEDOUT;
}