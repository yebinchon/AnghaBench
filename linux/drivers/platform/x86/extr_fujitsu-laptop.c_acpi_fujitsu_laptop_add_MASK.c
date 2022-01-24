#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fujitsu_laptop {scalar_t__ flags_supported; int /*<<< orphan*/  fifo; scalar_t__ flags_state; int /*<<< orphan*/  fifo_lock; } ;
struct acpi_device {int /*<<< orphan*/  handle; struct fujitsu_laptop* driver_data; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_2__* bl_device; } ;
struct TYPE_4__ {int /*<<< orphan*/  power; } ;
struct TYPE_5__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_FUJITSU_CLASS ; 
 int /*<<< orphan*/  ACPI_FUJITSU_LAPTOP_DEVICE_NAME ; 
 scalar_t__ BACKLIGHT_OFF ; 
 int BACKLIGHT_PARAM_POWER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  FUNC_BACKLIGHT ; 
 int /*<<< orphan*/  FUNC_BUTTONS ; 
 int /*<<< orphan*/  FUNC_FLAGS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_HOTKEY_RINGBUFFER_SIZE ; 
 int RINGBUFFERSIZE ; 
 scalar_t__ UNSUPPORTED_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*,char*) ; 
 scalar_t__ acpi_backlight_vendor ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int FUNC4 (struct acpi_device*) ; 
 int FUNC5 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (struct acpi_device*,int /*<<< orphan*/ ,int,int,int) ; 
 struct fujitsu_laptop* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct acpi_device* fext ; 
 TYPE_3__* fujitsu_bl ; 
 int FUNC11 (struct acpi_device*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct acpi_device *device)
{
	struct fujitsu_laptop *priv;
	int ret, i = 0;

	priv = FUNC10(&device->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC0(fext, "More than one FUJ02E3 ACPI device was found.  Driver may not work as intended.");
	fext = device;

	FUNC16(FUNC3(device), ACPI_FUJITSU_LAPTOP_DEVICE_NAME);
	FUNC16(FUNC2(device), ACPI_FUJITSU_CLASS);
	device->driver_data = priv;

	/* kfifo */
	FUNC15(&priv->fifo_lock);
	ret = FUNC12(&priv->fifo, RINGBUFFERSIZE * sizeof(int),
			  GFP_KERNEL);
	if (ret)
		return ret;

	FUNC14("ACPI: %s [%s]\n",
		FUNC3(device), FUNC1(device));

	while (FUNC9(device, FUNC_BUTTONS, 0x1, 0x0, 0x0) != 0 &&
	       i++ < MAX_HOTKEY_RINGBUFFER_SIZE)
		; /* No action, result is discarded */
	FUNC6(device->handle, "Discarded %i ringbuffer entries\n",
			  i);

	priv->flags_supported = FUNC9(device, FUNC_FLAGS, 0x0, 0x0,
					       0x0);

	/* Make sure our bitmask of supported functions is cleared if the
	   RFKILL function block is not implemented, like on the S7020. */
	if (priv->flags_supported == UNSUPPORTED_CMD)
		priv->flags_supported = 0;

	if (priv->flags_supported)
		priv->flags_state = FUNC9(device, FUNC_FLAGS, 0x4, 0x0,
						   0x0);

	/* Suspect this is a keymap of the application panel, print it */
	FUNC7(device->handle, "BTNI: [0x%x]\n",
			 FUNC9(device, FUNC_BUTTONS, 0x0, 0x0, 0x0));

	/* Sync backlight power status */
	if (fujitsu_bl && fujitsu_bl->bl_device &&
	    FUNC8() == acpi_backlight_vendor) {
		if (FUNC9(fext, FUNC_BACKLIGHT, 0x2,
				   BACKLIGHT_PARAM_POWER, 0x0) == BACKLIGHT_OFF)
			fujitsu_bl->bl_device->props.power = FB_BLANK_POWERDOWN;
		else
			fujitsu_bl->bl_device->props.power = FB_BLANK_UNBLANK;
	}

	ret = FUNC4(device);
	if (ret)
		goto err_free_fifo;

	ret = FUNC5(device);
	if (ret)
		goto err_free_fifo;

	ret = FUNC11(device);
	if (ret)
		goto err_free_fifo;

	return 0;

err_free_fifo:
	FUNC13(&priv->fifo);

	return ret;
}