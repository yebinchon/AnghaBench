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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct intel_hid_priv {scalar_t__ array; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INTEL_HID_DSM_BTNL_FN ; 
 int /*<<< orphan*/  INTEL_HID_DSM_HDMM_FN ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct intel_hid_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 struct intel_hid_priv* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct platform_device*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  notify_handler ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *device)
{
	acpi_handle handle = FUNC1(&device->dev);
	unsigned long long mode;
	struct intel_hid_priv *priv;
	acpi_status status;
	int err;

	FUNC14(handle);

	if (!FUNC13(handle, INTEL_HID_DSM_HDMM_FN, &mode)) {
		FUNC8(&device->dev, "failed to read mode\n");
		return -ENODEV;
	}

	if (mode != 0) {
		/*
		 * This driver only implements "simple" mode.  There appear
		 * to be no other modes, but we should be paranoid and check
		 * for compatibility.
		 */
		FUNC6(&device->dev, "platform is not in simple mode\n");
		return -ENODEV;
	}

	priv = FUNC10(&device->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	FUNC7(&device->dev, priv);

	err = FUNC15(device);
	if (err) {
		FUNC17("Failed to setup Intel HID hotkeys\n");
		return err;
	}

	/* Setup 5 button array */
	if (FUNC5(device)) {
		FUNC6(&device->dev, "platform supports 5 button array\n");
		err = FUNC12(device);
		if (err)
			FUNC17("Failed to setup Intel 5 button array hotkeys\n");
	}

	status = FUNC3(handle,
					     ACPI_DEVICE_NOTIFY,
					     notify_handler,
					     device);
	if (FUNC0(status))
		return -EBUSY;

	err = FUNC16(&device->dev, true);
	if (err)
		goto err_remove_notify;

	if (priv->array) {
		unsigned long long dummy;

		FUNC11(&device->dev, true);

		/* Call button load method to enable HID power button */
		if (!FUNC13(handle, INTEL_HID_DSM_BTNL_FN,
					       &dummy)) {
			FUNC8(&device->dev,
				 "failed to enable HID power button\n");
		}
	}

	FUNC9(&device->dev, true);
	/*
	 * In order for system wakeup to work, the EC GPE has to be marked as
	 * a wakeup one, so do that here (this setting will persist, but it has
	 * no effect until the wakeup mask is set for the EC GPE).
	 */
	FUNC2();
	return 0;

err_remove_notify:
	FUNC4(handle, ACPI_DEVICE_NOTIFY, notify_handler);

	return err;
}