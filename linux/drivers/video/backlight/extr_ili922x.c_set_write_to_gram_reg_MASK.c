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
struct spi_transfer {unsigned char* tx_buf; int cs_change; int bits_per_word; int len; int /*<<< orphan*/ * rx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int CMD_BUFSIZE ; 
 unsigned char REG_WRITE_DATA_TO_GRAM ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  START_RS_INDEX ; 
 int /*<<< orphan*/  START_RW_WRITE ; 
 int /*<<< orphan*/  ili922x_id ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,struct spi_message*) ; 

__attribute__((used)) static void FUNC5(struct spi_device *spi)
{
	struct spi_message msg;
	struct spi_transfer xfer;
	unsigned char tbuf[CMD_BUFSIZE];

	FUNC1(&xfer, 0, sizeof(struct spi_transfer));

	FUNC3(&msg);
	xfer.tx_buf = tbuf;
	xfer.rx_buf = NULL;
	xfer.cs_change = 1;

	tbuf[0] = FUNC0(ili922x_id, START_RS_INDEX, START_RW_WRITE);
	tbuf[1] = 0;
	tbuf[2] = REG_WRITE_DATA_TO_GRAM;

	xfer.bits_per_word = 8;
	xfer.len = 3;
	FUNC2(&xfer, &msg);
	FUNC4(spi, &msg);
}