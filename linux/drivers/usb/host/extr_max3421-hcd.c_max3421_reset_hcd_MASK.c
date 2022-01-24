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
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct max3421_hcd {int mode; int hien; int /*<<< orphan*/  frame_number; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX3421_CPUCTL_IE_BIT ; 
 int /*<<< orphan*/  MAX3421_HCTL_FRMRST_BIT ; 
 int /*<<< orphan*/  MAX3421_HCTL_SAMPLEBUS_BIT ; 
 int /*<<< orphan*/  MAX3421_HI_BUSEVENT_BIT ; 
 int /*<<< orphan*/  MAX3421_HI_CONDET_BIT ; 
 int /*<<< orphan*/  MAX3421_HI_FRAME_BIT ; 
 int /*<<< orphan*/  MAX3421_MODE_DMPULLDN_BIT ; 
 int /*<<< orphan*/  MAX3421_MODE_DPPULLDN_BIT ; 
 int /*<<< orphan*/  MAX3421_MODE_HOST_BIT ; 
 int /*<<< orphan*/  MAX3421_MODE_SOFKAENAB_BIT ; 
 int /*<<< orphan*/  MAX3421_REG_CPUCTL ; 
 int /*<<< orphan*/  MAX3421_REG_HCTL ; 
 int /*<<< orphan*/  MAX3421_REG_HIEN ; 
 int /*<<< orphan*/  MAX3421_REG_MODE ; 
 int /*<<< orphan*/  MAX3421_REG_USBCTL ; 
 int /*<<< orphan*/  MAX3421_REG_USBIRQ ; 
 int /*<<< orphan*/  MAX3421_USBCTL_CHIPRES_BIT ; 
 int /*<<< orphan*/  MAX3421_USBIRQ_OSCOKIRQ_BIT ; 
 int /*<<< orphan*/  USB_MAX_FRAME_NUMBER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct max3421_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int FUNC5 (struct usb_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*,int /*<<< orphan*/ ,int) ; 
 struct spi_device* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct usb_hcd *hcd)
{
	struct spi_device *spi = FUNC7(hcd->self.controller);
	struct max3421_hcd *max3421_hcd = FUNC3(hcd);
	int timeout;

	/* perform a chip reset and wait for OSCIRQ signal to appear: */
	FUNC6(hcd, MAX3421_REG_USBCTL, FUNC0(MAX3421_USBCTL_CHIPRES_BIT));
	/* clear reset: */
	FUNC6(hcd, MAX3421_REG_USBCTL, 0);
	timeout = 1000;
	while (1) {
		if (FUNC5(hcd, MAX3421_REG_USBIRQ)
		    & FUNC0(MAX3421_USBIRQ_OSCOKIRQ_BIT))
			break;
		if (--timeout < 0) {
			FUNC2(&spi->dev,
				"timed out waiting for oscillator OK signal");
			return 1;
		}
		FUNC1();
	}

	/*
	 * Turn on host mode, automatic generation of SOF packets, and
	 * enable pull-down registers on DM/DP:
	 */
	max3421_hcd->mode = (FUNC0(MAX3421_MODE_HOST_BIT) |
			     FUNC0(MAX3421_MODE_SOFKAENAB_BIT) |
			     FUNC0(MAX3421_MODE_DMPULLDN_BIT) |
			     FUNC0(MAX3421_MODE_DPPULLDN_BIT));
	FUNC6(hcd, MAX3421_REG_MODE, max3421_hcd->mode);

	/* reset frame-number: */
	max3421_hcd->frame_number = USB_MAX_FRAME_NUMBER;
	FUNC6(hcd, MAX3421_REG_HCTL, FUNC0(MAX3421_HCTL_FRMRST_BIT));

	/* sample the state of the D+ and D- lines */
	FUNC6(hcd, MAX3421_REG_HCTL, FUNC0(MAX3421_HCTL_SAMPLEBUS_BIT));
	FUNC4(hcd);

	/* enable frame, connection-detected, and bus-event interrupts: */
	max3421_hcd->hien = (FUNC0(MAX3421_HI_FRAME_BIT) |
			     FUNC0(MAX3421_HI_CONDET_BIT) |
			     FUNC0(MAX3421_HI_BUSEVENT_BIT));
	FUNC6(hcd, MAX3421_REG_HIEN, max3421_hcd->hien);

	/* enable interrupts: */
	FUNC6(hcd, MAX3421_REG_CPUCTL, FUNC0(MAX3421_CPUCTL_IE_BIT));
	return 1;
}