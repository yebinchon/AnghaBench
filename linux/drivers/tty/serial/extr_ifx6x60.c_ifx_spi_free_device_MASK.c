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
struct ifx_spi_device {int /*<<< orphan*/  rx_bus; int /*<<< orphan*/  rx_buffer; TYPE_1__* spi_dev; int /*<<< orphan*/  tx_bus; int /*<<< orphan*/  tx_buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFX_SPI_TRANSFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifx_spi_device*) ; 

__attribute__((used)) static void FUNC2(struct ifx_spi_device *ifx_dev)
{
	FUNC1(ifx_dev);
	FUNC0(&ifx_dev->spi_dev->dev,
				IFX_SPI_TRANSFER_SIZE,
				ifx_dev->tx_buffer,
				ifx_dev->tx_bus);
	FUNC0(&ifx_dev->spi_dev->dev,
				IFX_SPI_TRANSFER_SIZE,
				ifx_dev->rx_buffer,
				ifx_dev->rx_bus);
}