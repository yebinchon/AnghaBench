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
typedef  unsigned char u16 ;
struct spi_transfer {unsigned char* tx_buf; unsigned char* rx_buf; int cs_change; int bits_per_word; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_device*,struct spi_transfer*) ; 
 int CMD_BUFSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  START_RS_INDEX ; 
 int /*<<< orphan*/  START_RW_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  ili922x_id ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 unsigned char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_message*) ; 
 int FUNC7 (struct spi_device*,struct spi_message*) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi, u16 *rs)
{
	struct spi_message msg;
	struct spi_transfer xfer;
	unsigned char tbuf[CMD_BUFSIZE];
	unsigned char rbuf[CMD_BUFSIZE];
	int ret, i;

	FUNC3(&xfer, 0, sizeof(struct spi_transfer));
	FUNC6(&msg);
	xfer.tx_buf = tbuf;
	xfer.rx_buf = rbuf;
	xfer.cs_change = 1;
	FUNC0(spi, &xfer);

	tbuf[0] = FUNC4(FUNC1(ili922x_id, START_RS_INDEX,
					 START_RW_READ));
	/*
	 * we need 4-byte xfer here due to invalid dummy byte
	 * received after start byte
	 */
	for (i = 1; i < 4; i++)
		tbuf[i] = FUNC4(0);	/* dummy */

	xfer.bits_per_word = 8;
	xfer.len = 4;
	FUNC5(&xfer, &msg);
	ret = FUNC7(spi, &msg);
	if (ret < 0) {
		FUNC2(&spi->dev, "Error sending SPI message 0x%x", ret);
		return ret;
	}

	*rs = (rbuf[2] << 8) + rbuf[3];
	return 0;
}