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
struct TYPE_6__ {int /*<<< orphan*/  srdy; } ;
struct TYPE_5__ {int /*<<< orphan*/  status; int /*<<< orphan*/  actual_length; } ;
struct ifx_spi_device {unsigned char spi_slave_cts; int /*<<< orphan*/  tty_port; scalar_t__ spi_more; int /*<<< orphan*/  io_work_tasklet; int /*<<< orphan*/  flags; TYPE_3__ gpio; int /*<<< orphan*/  tx_fifo; scalar_t__ write_pending; TYPE_2__ spi_msg; TYPE_1__* spi_dev; int /*<<< orphan*/ * rx_buffer; int /*<<< orphan*/  (* swap_buf ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IFX_SPI_HEADER_0 ; 
 int IFX_SPI_HEADER_F ; 
 size_t IFX_SPI_HEADER_OVERHEAD ; 
 int /*<<< orphan*/  IFX_SPI_POWER_DATA_PENDING ; 
 int /*<<< orphan*/  IFX_SPI_POWER_SRDY ; 
 int /*<<< orphan*/  IFX_SPI_STATE_IO_IN_PROGRESS ; 
 int /*<<< orphan*/  IFX_SPI_STATE_IO_READY ; 
 size_t IFX_SPI_TRANSFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifx_spi_device*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ifx_spi_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ifx_spi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifx_spi_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(void *ctx)
{
	struct ifx_spi_device *ifx_dev = ctx;
	int length;
	int actual_length;
	unsigned char more = 0;
	unsigned char cts;
	int local_write_pending = 0;
	int queue_length;
	int srdy;
	int decode_result;

	FUNC9(ifx_dev);

	if (!ifx_dev->spi_msg.status) {
		/* check header validity, get comm flags */
		ifx_dev->swap_buf(ifx_dev->rx_buffer, IFX_SPI_HEADER_OVERHEAD,
			&ifx_dev->rx_buffer[IFX_SPI_HEADER_OVERHEAD]);
		decode_result = FUNC3(ifx_dev->rx_buffer,
				&length, &more, &cts);
		if (decode_result == IFX_SPI_HEADER_0) {
			FUNC1(&ifx_dev->spi_dev->dev,
				"ignore input: invalid header 0");
			ifx_dev->spi_slave_cts = 0;
			goto complete_exit;
		} else if (decode_result == IFX_SPI_HEADER_F) {
			FUNC1(&ifx_dev->spi_dev->dev,
				"ignore input: invalid header F");
			goto complete_exit;
		}

		ifx_dev->spi_slave_cts = cts;

		actual_length = FUNC7((unsigned int)length,
					ifx_dev->spi_msg.actual_length);
		ifx_dev->swap_buf(
			(ifx_dev->rx_buffer + IFX_SPI_HEADER_OVERHEAD),
			 actual_length,
			 &ifx_dev->rx_buffer[IFX_SPI_TRANSFER_SIZE]);
		FUNC4(
			ifx_dev,
			ifx_dev->rx_buffer + IFX_SPI_HEADER_OVERHEAD,
			(size_t)actual_length);
	} else {
		more = 0;
		FUNC1(&ifx_dev->spi_dev->dev, "SPI transfer error %d",
		       ifx_dev->spi_msg.status);
	}

complete_exit:
	if (ifx_dev->write_pending) {
		ifx_dev->write_pending = 0;
		local_write_pending = 1;
	}

	FUNC0(IFX_SPI_STATE_IO_IN_PROGRESS, &(ifx_dev->flags));

	queue_length = FUNC6(&ifx_dev->tx_fifo);
	srdy = FUNC2(ifx_dev->gpio.srdy);
	if (!srdy)
		FUNC5(ifx_dev, IFX_SPI_POWER_SRDY);

	/* schedule output if there is more to do */
	if (FUNC13(IFX_SPI_STATE_IO_READY, &ifx_dev->flags))
		FUNC12(&ifx_dev->io_work_tasklet);
	else {
		if (more || ifx_dev->spi_more || queue_length > 0 ||
			local_write_pending) {
			if (ifx_dev->spi_slave_cts) {
				if (more)
					FUNC8(ifx_dev);
			} else
				FUNC8(ifx_dev);
		} else {
			/*
			 * poke line discipline driver if any for more data
			 * may or may not get more data to write
			 * for now, say not busy
			 */
			FUNC5(ifx_dev,
						  IFX_SPI_POWER_DATA_PENDING);
			FUNC14(&ifx_dev->tty_port);
		}
	}
}