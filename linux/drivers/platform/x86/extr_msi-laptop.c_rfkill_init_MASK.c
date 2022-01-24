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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ ec_delay; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HZ ; 
 int /*<<< orphan*/  RFKILL_TYPE_BLUETOOTH ; 
 int /*<<< orphan*/  RFKILL_TYPE_WLAN ; 
 int /*<<< orphan*/  RFKILL_TYPE_WWAN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  msi_rfkill_init ; 
 int /*<<< orphan*/  msi_rfkill_work ; 
 TYPE_1__* quirks ; 
 scalar_t__ rfk_bluetooth ; 
 scalar_t__ rfk_threeg ; 
 scalar_t__ rfk_wlan ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rfkill_bluetooth_ops ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  rfkill_threeg_ops ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  rfkill_wlan_ops ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ threeg_exists ; 

__attribute__((used)) static int FUNC8(struct platform_device *sdev)
{
	/* add rfkill */
	int retval;

	/* keep the hardware wireless state */
	FUNC0();

	rfk_bluetooth = FUNC1("msi-bluetooth", &sdev->dev,
				RFKILL_TYPE_BLUETOOTH,
				&rfkill_bluetooth_ops, NULL);
	if (!rfk_bluetooth) {
		retval = -ENOMEM;
		goto err_bluetooth;
	}
	retval = FUNC3(rfk_bluetooth);
	if (retval)
		goto err_bluetooth;

	rfk_wlan = FUNC1("msi-wlan", &sdev->dev, RFKILL_TYPE_WLAN,
				&rfkill_wlan_ops, NULL);
	if (!rfk_wlan) {
		retval = -ENOMEM;
		goto err_wlan;
	}
	retval = FUNC3(rfk_wlan);
	if (retval)
		goto err_wlan;

	if (threeg_exists) {
		rfk_threeg = FUNC1("msi-threeg", &sdev->dev,
				RFKILL_TYPE_WWAN, &rfkill_threeg_ops, NULL);
		if (!rfk_threeg) {
			retval = -ENOMEM;
			goto err_threeg;
		}
		retval = FUNC3(rfk_threeg);
		if (retval)
			goto err_threeg;
	}

	/* schedule to run rfkill state initial */
	if (quirks->ec_delay) {
		FUNC6(&msi_rfkill_init,
			FUNC5(1 * HZ));
	} else
		FUNC7(&msi_rfkill_work);

	return 0;

err_threeg:
	FUNC2(rfk_threeg);
	if (rfk_wlan)
		FUNC4(rfk_wlan);
err_wlan:
	FUNC2(rfk_wlan);
	if (rfk_bluetooth)
		FUNC4(rfk_bluetooth);
err_bluetooth:
	FUNC2(rfk_bluetooth);

	return retval;
}