#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct pci_dev {scalar_t__ vendor; } ;
struct backlight_properties {int max_brightness; int /*<<< orphan*/  type; } ;
struct acpi_device {int dummy; } ;
struct TYPE_14__ {int (* get_brightness ) (TYPE_2__*) ;} ;
struct TYPE_17__ {TYPE_10__ backlight_ops; int /*<<< orphan*/  iolen; int /*<<< orphan*/  iostart; int /*<<< orphan*/  (* set_brightness ) (int) ;} ;
struct TYPE_15__ {int brightness; } ;
struct TYPE_16__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_PLATFORM ; 
 int ENODEV ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ PCI_VENDOR_ID_INTEL ; 
 scalar_t__ PCI_VENDOR_ID_NVIDIA ; 
 int FUNC1 (TYPE_2__*) ; 
 TYPE_2__* apple_backlight_device ; 
 TYPE_2__* FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_10__*,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_5__* hw_data ; 
 TYPE_5__ intel_chipset_data ; 
 int /*<<< orphan*/  FUNC4 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 TYPE_5__ nvidia_chipset_data ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC15(struct acpi_device *dev)
{
	struct backlight_properties props;
	struct pci_dev *host;
	int intensity;

	host = FUNC6(0, 0, 0);

	if (!host) {
		FUNC7("unable to find PCI host\n");
		return -ENODEV;
	}

	if (host->vendor == PCI_VENDOR_ID_INTEL)
		hw_data = &intel_chipset_data;
	else if (host->vendor == PCI_VENDOR_ID_NVIDIA)
		hw_data = &nvidia_chipset_data;

	FUNC5(host);

	if (!hw_data) {
		FUNC7("unknown hardware\n");
		return -ENODEV;
	}

	/* Check that the hardware responds - this may not work under EFI */

	intensity = hw_data->backlight_ops.get_brightness(NULL);

	if (!intensity) {
		hw_data->set_brightness(1);
		if (!hw_data->backlight_ops.get_brightness(NULL))
			return -ENODEV;

		hw_data->set_brightness(0);
	}

	if (!FUNC9(hw_data->iostart, hw_data->iolen,
			    "Apple backlight"))
		return -ENXIO;

	FUNC4(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_PLATFORM;
	props.max_brightness = 15;
	apple_backlight_device = FUNC2("apple_backlight",
				  NULL, NULL, &hw_data->backlight_ops, &props);

	if (FUNC0(apple_backlight_device)) {
		FUNC8(hw_data->iostart, hw_data->iolen);
		return FUNC1(apple_backlight_device);
	}

	apple_backlight_device->props.brightness =
		hw_data->backlight_ops.get_brightness(apple_backlight_device);
	FUNC3(apple_backlight_device);

	return 0;
}