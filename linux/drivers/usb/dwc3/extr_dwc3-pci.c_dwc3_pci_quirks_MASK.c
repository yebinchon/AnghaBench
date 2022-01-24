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
struct pci_dev {scalar_t__ vendor; scalar_t__ device; int /*<<< orphan*/  dev; } ;
struct gpio_desc {int dummy; } ;
struct dwc3_pci {int has_dsm_for_pm; int /*<<< orphan*/  guid; struct pci_dev* pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 scalar_t__ PCI_DEVICE_ID_INTEL_BXT ; 
 scalar_t__ PCI_DEVICE_ID_INTEL_BXT_M ; 
 scalar_t__ PCI_DEVICE_ID_INTEL_BYT ; 
 int /*<<< orphan*/  PCI_INTEL_BXT_DSM_GUID ; 
 scalar_t__ PCI_VENDOR_ID_INTEL ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  acpi_dwc3_byt_gpios ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct gpio_desc* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC8 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  platform_bytcr_gpios ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct dwc3_pci *dwc)
{
	struct pci_dev			*pdev = dwc->pci;

	if (pdev->vendor == PCI_VENDOR_ID_INTEL) {
		if (pdev->device == PCI_DEVICE_ID_INTEL_BXT ||
				pdev->device == PCI_DEVICE_ID_INTEL_BXT_M) {
			FUNC9(PCI_INTEL_BXT_DSM_GUID, &dwc->guid);
			dwc->has_dsm_for_pm = true;
		}

		if (pdev->device == PCI_DEVICE_ID_INTEL_BYT) {
			struct gpio_desc *gpio;
			int ret;

			/* On BYT the FW does not always enable the refclock */
			ret = FUNC4(pdev);
			if (ret)
				return ret;

			ret = FUNC3(&pdev->dev,
					acpi_dwc3_byt_gpios);
			if (ret)
				FUNC2(&pdev->dev, "failed to add mapping table\n");

			/*
			 * A lot of BYT devices lack ACPI resource entries for
			 * the GPIOs, add a fallback mapping to the reference
			 * design GPIOs which all boards seem to use.
			 */
			FUNC5(&platform_bytcr_gpios);

			/*
			 * These GPIOs will turn on the USB2 PHY. Note that we have to
			 * put the gpio descriptors again here because the phy driver
			 * might want to grab them, too.
			 */
			gpio = FUNC6(&pdev->dev, "cs", GPIOD_OUT_LOW);
			if (FUNC0(gpio))
				return FUNC1(gpio);

			FUNC8(gpio, 1);
			FUNC7(gpio);

			gpio = FUNC6(&pdev->dev, "reset", GPIOD_OUT_LOW);
			if (FUNC0(gpio))
				return FUNC1(gpio);

			if (gpio) {
				FUNC8(gpio, 1);
				FUNC7(gpio);
				FUNC10(10000, 11000);
			}
		}
	}

	return 0;
}