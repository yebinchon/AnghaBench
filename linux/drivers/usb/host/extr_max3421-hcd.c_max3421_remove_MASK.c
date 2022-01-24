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
struct TYPE_2__ {int /*<<< orphan*/ * controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct spi_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct max3421_hcd {int /*<<< orphan*/  lock; struct max3421_hcd* next; int /*<<< orphan*/  spi_thread; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct spi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct max3421_hcd* max3421_hcd_list ; 
 struct usb_hcd* FUNC3 (struct max3421_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 

__attribute__((used)) static int
FUNC8(struct spi_device *spi)
{
	struct max3421_hcd *max3421_hcd = NULL, **prev;
	struct usb_hcd *hcd = NULL;
	unsigned long flags;

	for (prev = &max3421_hcd_list; *prev; prev = &(*prev)->next) {
		max3421_hcd = *prev;
		hcd = FUNC3(max3421_hcd);
		if (hcd->self.controller == &spi->dev)
			break;
	}
	if (!max3421_hcd) {
		FUNC0(&spi->dev, "no MAX3421 HCD found for SPI device %p\n",
			spi);
		return -ENODEV;
	}

	FUNC7(hcd);

	FUNC4(&max3421_hcd->lock, flags);

	FUNC2(max3421_hcd->spi_thread);
	*prev = max3421_hcd->next;

	FUNC5(&max3421_hcd->lock, flags);

	FUNC1(spi->irq, hcd);

	FUNC6(hcd);
	return 0;
}