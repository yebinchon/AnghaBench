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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wilc {int /*<<< orphan*/  dev; } ;
struct spi_transfer {char* rx_buf; int /*<<< orphan*/  delay_usecs; int /*<<< orphan*/  len; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int /*<<< orphan*/  is_dma_mapped; struct spi_device* spi; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USE_SPI_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_message*) ; 
 int FUNC7 (struct spi_device*,struct spi_message*) ; 
 struct spi_device* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct wilc *wilc, u8 *b, u32 len)
{
	struct spi_device *spi = FUNC8(wilc->dev);
	int ret;
	struct spi_message msg;

	if (len > 0 && b) {
		struct spi_transfer tr = {
			.tx_buf = b,
			.len = len,
			.delay_usecs = 0,
		};
		char *r_buffer = FUNC3(len, GFP_KERNEL);

		if (!r_buffer)
			return -ENOMEM;

		tr.rx_buf = r_buffer;
		FUNC0(&spi->dev, "Request writing %d bytes\n", len);

		FUNC4(&msg, 0, sizeof(msg));
		FUNC6(&msg);
		msg.spi = spi;
		msg.is_dma_mapped = USE_SPI_DMA;
		FUNC5(&tr, &msg);

		ret = FUNC7(spi, &msg);
		if (ret < 0)
			FUNC1(&spi->dev, "SPI transaction failed\n");

		FUNC2(r_buffer);
	} else {
		FUNC1(&spi->dev,
			"can't write data with the following length: %d\n",
			len);
		ret = -EINVAL;
	}

	return ret;
}