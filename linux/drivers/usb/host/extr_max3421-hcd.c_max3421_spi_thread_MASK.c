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
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  bits_per_word; int /*<<< orphan*/  max_speed_hz; } ;
struct max3421_hcd {int rev; int hien; int* iopins; int /*<<< orphan*/  todo; int /*<<< orphan*/  curr_urb; scalar_t__ urb_done; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHECK_UNLINK ; 
 int /*<<< orphan*/  ENABLE_IRQ ; 
 int /*<<< orphan*/  IOPIN_UPDATE ; 
 int /*<<< orphan*/  MAX3421_HCTL_BUSRST_BIT ; 
 int /*<<< orphan*/  MAX3421_PINCTL_FDUPSPI_BIT ; 
 int /*<<< orphan*/  MAX3421_PINCTL_INTLEVEL_BIT ; 
 scalar_t__ MAX3421_REG_HCTL ; 
 scalar_t__ MAX3421_REG_HIEN ; 
 scalar_t__ MAX3421_REG_IOPINS1 ; 
 scalar_t__ MAX3421_REG_PINCTL ; 
 scalar_t__ MAX3421_REG_REVISION ; 
 int /*<<< orphan*/  RESET_HCD ; 
 int /*<<< orphan*/  RESET_PORT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct max3421_hcd* FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct usb_hcd*) ; 
 scalar_t__ FUNC9 (struct usb_hcd*) ; 
 int FUNC10 (struct usb_hcd*) ; 
 int FUNC11 (struct usb_hcd*) ; 
 int FUNC12 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 void* FUNC16 (struct usb_hcd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_hcd*,scalar_t__,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct spi_device* FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC20(void *dev_id)
{
	struct usb_hcd *hcd = dev_id;
	struct spi_device *spi = FUNC19(hcd->self.controller);
	struct max3421_hcd *max3421_hcd = FUNC6(hcd);
	int i, i_worked = 1;

	/* set full-duplex SPI mode, low-active interrupt pin: */
	FUNC17(hcd, MAX3421_REG_PINCTL,
		(FUNC1(MAX3421_PINCTL_FDUPSPI_BIT) |	/* full-duplex */
		 FUNC1(MAX3421_PINCTL_INTLEVEL_BIT)));	/* low-active irq */

	while (!FUNC7()) {
		max3421_hcd->rev = FUNC16(hcd, MAX3421_REG_REVISION);
		if (max3421_hcd->rev == 0x12 || max3421_hcd->rev == 0x13)
			break;
		FUNC3(&spi->dev, "bad rev 0x%02x", max3421_hcd->rev);
		FUNC13(10000);
	}
	FUNC4(&spi->dev, "rev 0x%x, SPI clk %dHz, bpw %u, irq %d\n",
		 max3421_hcd->rev, spi->max_speed_hz, spi->bits_per_word,
		 spi->irq);

	while (!FUNC7()) {
		if (!i_worked) {
			/*
			 * We'll be waiting for wakeups from the hard
			 * interrupt handler, so now is a good time to
			 * sync our hien with the chip:
			 */
			FUNC17(hcd, MAX3421_REG_HIEN, max3421_hcd->hien);

			FUNC15(TASK_INTERRUPTIBLE);
			if (FUNC18(ENABLE_IRQ, &max3421_hcd->todo))
				FUNC5(spi->irq);
			FUNC14();
			FUNC2(TASK_RUNNING);
		}

		i_worked = 0;

		if (max3421_hcd->urb_done)
			i_worked |= FUNC12(hcd);
		else if (FUNC9(hcd))
			i_worked = 1;
		else if (!max3421_hcd->curr_urb)
			i_worked |= FUNC11(hcd);

		if (FUNC18(RESET_HCD, &max3421_hcd->todo))
			/* reset the HCD: */
			i_worked |= FUNC10(hcd);
		if (FUNC18(RESET_PORT, &max3421_hcd->todo)) {
			/* perform a USB bus reset: */
			FUNC17(hcd, MAX3421_REG_HCTL,
				FUNC1(MAX3421_HCTL_BUSRST_BIT));
			i_worked = 1;
		}
		if (FUNC18(CHECK_UNLINK, &max3421_hcd->todo))
			i_worked |= FUNC8(hcd);
		if (FUNC18(IOPIN_UPDATE, &max3421_hcd->todo)) {
			/*
			 * IOPINS1/IOPINS2 do not auto-increment, so we can't
			 * use spi_wr_buf().
			 */
			for (i = 0; i < FUNC0(max3421_hcd->iopins); ++i) {
				u8 val = FUNC16(hcd, MAX3421_REG_IOPINS1);

				val = ((val & 0xf0) |
				       (max3421_hcd->iopins[i] & 0x0f));
				FUNC17(hcd, MAX3421_REG_IOPINS1 + i, val);
				max3421_hcd->iopins[i] = val;
			}
			i_worked = 1;
		}
	}
	FUNC15(TASK_RUNNING);
	FUNC4(&spi->dev, "SPI thread exiting");
	return 0;
}