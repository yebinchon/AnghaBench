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
typedef  int u8 ;
typedef  int u32 ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct pnp_device_id {int dummy; } ;
struct pnp_dev {int /*<<< orphan*/  dev; } ;
struct backlight_properties {scalar_t__ max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct apple_gmux_data {scalar_t__ iostart; scalar_t__ iolen; int indexed; int gpe; int external_switchable; int /*<<< orphan*/  dhandle; int /*<<< orphan*/  powerchange_done; int /*<<< orphan*/  power_state; struct backlight_device* bdev; int /*<<< orphan*/  index_lock; } ;
typedef  int /*<<< orphan*/  props ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BACKLIGHT_PLATFORM ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GMUX_MAX_BRIGHTNESS ; 
 scalar_t__ GMUX_MIN_IO_LEN ; 
 int /*<<< orphan*/  GMUX_PORT_MAX_BRIGHTNESS ; 
 int /*<<< orphan*/  GMUX_PORT_SWITCH_EXTERNAL ; 
 int /*<<< orphan*/  GMUX_PORT_VERSION_MAJOR ; 
 int /*<<< orphan*/  GMUX_PORT_VERSION_MINOR ; 
 int /*<<< orphan*/  GMUX_PORT_VERSION_RELEASE ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 scalar_t__ FUNC3 (struct backlight_device*) ; 
 int FUNC4 (struct backlight_device*) ; 
 int /*<<< orphan*/  VGA_SWITCHEROO_CAN_SWITCH_DDC ; 
 int /*<<< orphan*/  VGA_SWITCHEROO_NEEDS_EDP_CONFIG ; 
 int /*<<< orphan*/  VGA_SWITCHEROO_ON ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  acpi_backlight_vendor ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct apple_gmux_data* apple_gmux_data ; 
 struct backlight_device* FUNC14 (char*,int /*<<< orphan*/ *,struct apple_gmux_data*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC15 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gmux_bl_ops ; 
 int /*<<< orphan*/  FUNC19 (struct apple_gmux_data*) ; 
 int /*<<< orphan*/  FUNC20 (struct apple_gmux_data*) ; 
 int /*<<< orphan*/  FUNC21 (struct backlight_device*) ; 
 int /*<<< orphan*/  gmux_handler_classic ; 
 int /*<<< orphan*/  gmux_handler_indexed ; 
 scalar_t__ FUNC22 (struct apple_gmux_data*) ; 
 int /*<<< orphan*/  gmux_notify_handler ; 
 void* FUNC23 (struct apple_gmux_data*,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct apple_gmux_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct apple_gmux_data*) ; 
 int /*<<< orphan*/  FUNC26 (struct apple_gmux_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  is_thunderbolt ; 
 int /*<<< orphan*/  FUNC28 (struct apple_gmux_data*) ; 
 struct apple_gmux_data* FUNC29 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 struct resource* FUNC32 (struct pnp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct pnp_dev*,struct apple_gmux_data*) ; 
 int /*<<< orphan*/  FUNC34 (char*,...) ; 
 int /*<<< orphan*/  FUNC35 (char*,...) ; 
 int /*<<< orphan*/  FUNC36 (char*) ; 
 int /*<<< orphan*/  FUNC37 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__,scalar_t__,char*) ; 
 int FUNC39 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC40(struct pnp_dev *pnp, const struct pnp_device_id *id)
{
	struct apple_gmux_data *gmux_data;
	struct resource *res;
	struct backlight_properties props;
	struct backlight_device *bdev;
	u8 ver_major, ver_minor, ver_release;
	int ret = -ENXIO;
	acpi_status status;
	unsigned long long gpe;

	if (apple_gmux_data)
		return -EBUSY;

	gmux_data = FUNC29(sizeof(*gmux_data), GFP_KERNEL);
	if (!gmux_data)
		return -ENOMEM;
	FUNC33(pnp, gmux_data);

	res = FUNC32(pnp, IORESOURCE_IO, 0);
	if (!res) {
		FUNC34("Failed to find gmux I/O resource\n");
		goto err_free;
	}

	gmux_data->iostart = res->start;
	gmux_data->iolen = res->end - res->start;

	if (gmux_data->iolen < GMUX_MIN_IO_LEN) {
		FUNC34("gmux I/O region too small (%lu < %u)\n",
		       gmux_data->iolen, GMUX_MIN_IO_LEN);
		goto err_free;
	}

	if (!FUNC38(gmux_data->iostart, gmux_data->iolen,
			    "Apple gmux")) {
		FUNC34("gmux I/O already in use\n");
		goto err_free;
	}

	/*
	 * Invalid version information may indicate either that the gmux
	 * device isn't present or that it's a new one that uses indexed
	 * io
	 */

	ver_major = FUNC24(gmux_data, GMUX_PORT_VERSION_MAJOR);
	ver_minor = FUNC24(gmux_data, GMUX_PORT_VERSION_MINOR);
	ver_release = FUNC24(gmux_data, GMUX_PORT_VERSION_RELEASE);
	if (ver_major == 0xff && ver_minor == 0xff && ver_release == 0xff) {
		if (FUNC22(gmux_data)) {
			u32 version;
			FUNC31(&gmux_data->index_lock);
			gmux_data->indexed = true;
			version = FUNC23(gmux_data,
				GMUX_PORT_VERSION_MAJOR);
			ver_major = (version >> 24) & 0xff;
			ver_minor = (version >> 16) & 0xff;
			ver_release = (version >> 8) & 0xff;
		} else {
			FUNC35("gmux device not present\n");
			ret = -ENODEV;
			goto err_release;
		}
	}
	FUNC35("Found gmux version %d.%d.%d [%s]\n", ver_major, ver_minor,
		ver_release, (gmux_data->indexed ? "indexed" : "classic"));

	FUNC30(&props, 0, sizeof(props));
	props.type = BACKLIGHT_PLATFORM;
	props.max_brightness = FUNC23(gmux_data, GMUX_PORT_MAX_BRIGHTNESS);

	/*
	 * Currently it's assumed that the maximum brightness is less than
	 * 2^24 for compatibility with old gmux versions. Cap the max
	 * brightness at this value, but print a warning if the hardware
	 * reports something higher so that it can be fixed.
	 */
	if (FUNC5(props.max_brightness > GMUX_MAX_BRIGHTNESS))
		props.max_brightness = GMUX_MAX_BRIGHTNESS;

	bdev = FUNC14("gmux_backlight", &pnp->dev,
					 gmux_data, &gmux_bl_ops, &props);
	if (FUNC3(bdev)) {
		ret = FUNC4(bdev);
		goto err_release;
	}

	gmux_data->bdev = bdev;
	bdev->props.brightness = FUNC21(bdev);
	FUNC16(bdev);

	/*
	 * The backlight situation on Macs is complicated. If the gmux is
	 * present it's the best choice, because it always works for
	 * backlight control and supports more levels than other options.
	 * Disable the other backlight choices.
	 */
	FUNC12(acpi_backlight_vendor);
	FUNC13();

	gmux_data->power_state = VGA_SWITCHEROO_ON;

	gmux_data->dhandle = FUNC1(&pnp->dev);
	if (!gmux_data->dhandle) {
		FUNC34("Cannot find acpi handle for pnp device %s\n",
		       FUNC18(&pnp->dev));
		ret = -ENODEV;
		goto err_notify;
	}

	status = FUNC8(gmux_data->dhandle, "GMGP", NULL, &gpe);
	if (FUNC2(status)) {
		gmux_data->gpe = (int)gpe;

		status = FUNC10(gmux_data->dhandle,
						     ACPI_DEVICE_NOTIFY,
						     &gmux_notify_handler, pnp);
		if (FUNC0(status)) {
			FUNC34("Install notify handler failed: %s\n",
			       FUNC9(status));
			ret = -ENODEV;
			goto err_notify;
		}

		status = FUNC7(NULL, gmux_data->gpe);
		if (FUNC0(status)) {
			FUNC34("Cannot enable gpe: %s\n",
			       FUNC9(status));
			goto err_enable_gpe;
		}
	} else {
		FUNC36("No GPE found for gmux\n");
		gmux_data->gpe = -1;
	}

	/*
	 * If Thunderbolt is present, the external DP port is not fully
	 * switchable. Force its AUX channel to the discrete GPU.
	 */
	gmux_data->external_switchable =
		!FUNC17(&pci_bus_type, NULL, NULL, is_thunderbolt);
	if (!gmux_data->external_switchable)
		FUNC26(gmux_data, GMUX_PORT_SWITCH_EXTERNAL, 3);

	apple_gmux_data = gmux_data;
	FUNC27(&gmux_data->powerchange_done);
	FUNC20(gmux_data);
	FUNC25(gmux_data);

	/*
	 * Retina MacBook Pros cannot switch the panel's AUX separately
	 * and need eDP pre-calibration. They are distinguishable from
	 * pre-retinas by having an "indexed" gmux.
	 *
	 * Pre-retina MacBook Pros can switch the panel's DDC separately.
	 */
	if (gmux_data->indexed)
		ret = FUNC39(&gmux_handler_indexed,
					      VGA_SWITCHEROO_NEEDS_EDP_CONFIG);
	else
		ret = FUNC39(&gmux_handler_classic,
					      VGA_SWITCHEROO_CAN_SWITCH_DDC);
	if (ret) {
		FUNC34("Failed to register vga_switcheroo handler\n");
		goto err_register_handler;
	}

	return 0;

err_register_handler:
	FUNC19(gmux_data);
	apple_gmux_data = NULL;
	if (gmux_data->gpe >= 0)
		FUNC6(NULL, gmux_data->gpe);
err_enable_gpe:
	if (gmux_data->gpe >= 0)
		FUNC11(gmux_data->dhandle,
					   ACPI_DEVICE_NOTIFY,
					   &gmux_notify_handler);
err_notify:
	FUNC15(bdev);
err_release:
	FUNC37(gmux_data->iostart, gmux_data->iolen);
err_free:
	FUNC28(gmux_data);
	return ret;
}