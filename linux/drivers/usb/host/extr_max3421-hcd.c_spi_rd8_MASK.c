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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  transfer ;
struct TYPE_4__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct spi_transfer {int* tx_buf; int len; int /*<<< orphan*/ * rx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
struct max3421_hcd {TYPE_3__* rx; TYPE_2__* tx; } ;
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {int* data; } ;

/* Variables and functions */
 unsigned int MAX3421_SPI_DIR_RD ; 
 int /*<<< orphan*/  MAX3421_SPI_DIR_SHIFT ; 
 int /*<<< orphan*/  MAX3421_SPI_REG_SHIFT ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 struct max3421_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,struct spi_message*) ; 
 struct spi_device* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8
FUNC7(struct usb_hcd *hcd, unsigned int reg)
{
	struct max3421_hcd *max3421_hcd = FUNC1(hcd);
	struct spi_device *spi = FUNC6(hcd->self.controller);
	struct spi_transfer transfer;
	struct spi_message msg;

	FUNC2(&transfer, 0, sizeof(transfer));

	FUNC4(&msg);

	max3421_hcd->tx->data[0] =
		(FUNC0(reg, MAX3421_SPI_REG_SHIFT) |
		 FUNC0(MAX3421_SPI_DIR_RD, MAX3421_SPI_DIR_SHIFT));

	transfer.tx_buf = max3421_hcd->tx->data;
	transfer.rx_buf = max3421_hcd->rx->data;
	transfer.len = 2;

	FUNC3(&transfer, &msg);
	FUNC5(spi, &msg);

	return max3421_hcd->rx->data[1];
}