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
struct spi_transfer {char* tx_buf; int /*<<< orphan*/  delay_usecs; int /*<<< orphan*/  len; int /*<<< orphan*/ * rx_buf; } ;
struct spi_message {int /*<<< orphan*/  is_dma_mapped; struct spi_device* spi; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USE_SPI_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_message*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_message*) ; 
 int FUNC6 (struct spi_device*,struct spi_message*) ; 
 struct spi_device* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct wilc *wilc, u8 *rb, u32 rlen)
{
	struct spi_device *spi = FUNC7(wilc->dev);
	int ret;

	if (rlen > 0) {
		struct spi_message msg;
		struct spi_transfer tr = {
			.rx_buf = rb,
			.len = rlen,
			.delay_usecs = 0,

		};
		char *t_buffer = FUNC2(rlen, GFP_KERNEL);

		if (!t_buffer)
			return -ENOMEM;

		tr.tx_buf = t_buffer;

		FUNC3(&msg, 0, sizeof(msg));
		FUNC5(&msg);
		msg.spi = spi;
		msg.is_dma_mapped = USE_SPI_DMA;
		FUNC4(&tr, &msg);

		ret = FUNC6(spi, &msg);
		if (ret < 0)
			FUNC0(&spi->dev, "SPI transaction failed\n");
		FUNC1(t_buffer);
	} else {
		FUNC0(&spi->dev,
			"can't read data with the following length: %u\n",
			rlen);
		ret = -EINVAL;
	}

	return ret;
}