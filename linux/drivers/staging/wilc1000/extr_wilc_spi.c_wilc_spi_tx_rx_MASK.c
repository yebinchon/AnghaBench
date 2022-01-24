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
struct spi_transfer {int bits_per_word; int /*<<< orphan*/  delay_usecs; int /*<<< orphan*/  len; int /*<<< orphan*/ * tx_buf; int /*<<< orphan*/ * rx_buf; } ;
struct spi_message {int /*<<< orphan*/  is_dma_mapped; struct spi_device* spi; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  USE_SPI_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_message*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_message*) ; 
 int FUNC4 (struct spi_device*,struct spi_message*) ; 
 struct spi_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct wilc *wilc, u8 *wb, u8 *rb, u32 rlen)
{
	struct spi_device *spi = FUNC5(wilc->dev);
	int ret;

	if (rlen > 0) {
		struct spi_message msg;
		struct spi_transfer tr = {
			.rx_buf = rb,
			.tx_buf = wb,
			.len = rlen,
			.bits_per_word = 8,
			.delay_usecs = 0,

		};

		FUNC1(&msg, 0, sizeof(msg));
		FUNC3(&msg);
		msg.spi = spi;
		msg.is_dma_mapped = USE_SPI_DMA;

		FUNC2(&tr, &msg);
		ret = FUNC4(spi, &msg);
		if (ret < 0)
			FUNC0(&spi->dev, "SPI transaction failed\n");
	} else {
		FUNC0(&spi->dev,
			"can't read data with the following length: %u\n",
			rlen);
		ret = -EINVAL;
	}

	return ret;
}