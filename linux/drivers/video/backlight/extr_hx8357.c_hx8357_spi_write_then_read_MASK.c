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
typedef  int /*<<< orphan*/  xfer ;
typedef  int u8 ;
typedef  int u16 ;
struct spi_transfer {int len; int bits_per_word; int* tx_buf; int* rx_buf; } ;
struct spi_message {int dummy; } ;
struct lcd_device {int /*<<< orphan*/  dev; } ;
struct hx8357_data {int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 struct hx8357_data* FUNC3 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_message*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int FUNC8(struct lcd_device *lcdev,
				u8 *txbuf, u16 txlen,
				u8 *rxbuf, u16 rxlen)
{
	struct hx8357_data *lcd = FUNC3(lcdev);
	struct spi_message msg;
	struct spi_transfer xfer[2];
	u16 *local_txbuf = NULL;
	int ret = 0;

	FUNC4(xfer, 0, sizeof(xfer));
	FUNC6(&msg);

	if (txlen) {
		int i;

		local_txbuf = FUNC1(txlen, sizeof(*local_txbuf), GFP_KERNEL);

		if (!local_txbuf)
			return -ENOMEM;

		for (i = 0; i < txlen; i++) {
			local_txbuf[i] = txbuf[i];
			if (i > 0)
				local_txbuf[i] |= 1 << 8;
		}

		xfer[0].len = 2 * txlen;
		xfer[0].bits_per_word = 9;
		xfer[0].tx_buf = local_txbuf;
		FUNC5(&xfer[0], &msg);
	}

	if (rxlen) {
		xfer[1].len = rxlen;
		xfer[1].bits_per_word = 8;
		xfer[1].rx_buf = rxbuf;
		FUNC5(&xfer[1], &msg);
	}

	ret = FUNC7(lcd->spi, &msg);
	if (ret < 0)
		FUNC0(&lcdev->dev, "Couldn't send SPI data\n");

	if (txlen)
		FUNC2(local_txbuf);

	return ret;
}