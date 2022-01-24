#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  transfer ;
struct TYPE_3__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct spi_transfer {int* tx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
struct max3421_hcd {TYPE_2__* tx; } ;
struct TYPE_4__ {int* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX3421_SPI_DIR_SHIFT ; 
 unsigned int MAX3421_SPI_DIR_WR ; 
 int /*<<< orphan*/  MAX3421_SPI_REG_SHIFT ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 struct max3421_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,struct spi_message*) ; 
 struct spi_device* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct usb_hcd *hcd, unsigned int reg, void *buf, size_t len)
{
	struct spi_device *spi = FUNC6(hcd->self.controller);
	struct max3421_hcd *max3421_hcd = FUNC1(hcd);
	struct spi_transfer transfer[2];
	struct spi_message msg;

	FUNC2(transfer, 0, sizeof(transfer));

	FUNC4(&msg);

	max3421_hcd->tx->data[0] =
		(FUNC0(reg, MAX3421_SPI_REG_SHIFT) |
		 FUNC0(MAX3421_SPI_DIR_WR, MAX3421_SPI_DIR_SHIFT));

	transfer[0].tx_buf = max3421_hcd->tx->data;
	transfer[0].len = 1;

	transfer[1].tx_buf = buf;
	transfer[1].len = len;

	FUNC3(&transfer[0], &msg);
	FUNC3(&transfer[1], &msg);
	FUNC5(spi, &msg);
}