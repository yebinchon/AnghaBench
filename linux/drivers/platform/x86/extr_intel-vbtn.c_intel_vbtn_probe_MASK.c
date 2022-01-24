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
struct intel_vbtn_priv {int dummy; } ;
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
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct intel_vbtn_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 struct intel_vbtn_priv* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  notify_handler ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *device)
{
	acpi_handle handle = FUNC1(&device->dev);
	struct intel_vbtn_priv *priv;
	acpi_status status;
	int err;

	status = FUNC3(handle, "VBDL", NULL, NULL);
	if (FUNC0(status)) {
		FUNC7(&device->dev, "failed to read Intel Virtual Button driver\n");
		return -ENODEV;
	}

	priv = FUNC9(&device->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	FUNC6(&device->dev, priv);

	err = FUNC10(device);
	if (err) {
		FUNC11("Failed to setup Intel Virtual Button\n");
		return err;
	}

	FUNC5(device);

	status = FUNC4(handle,
					     ACPI_DEVICE_NOTIFY,
					     notify_handler,
					     device);
	if (FUNC0(status))
		return -EBUSY;

	FUNC8(&device->dev, true);
	/*
	 * In order for system wakeup to work, the EC GPE has to be marked as
	 * a wakeup one, so do that here (this setting will persist, but it has
	 * no effect until the wakeup mask is set for the EC GPE).
	 */
	FUNC2();
	return 0;
}