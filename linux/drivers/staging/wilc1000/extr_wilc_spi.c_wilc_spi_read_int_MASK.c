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
typedef  int u32 ;
struct wilc_spi {int nint; scalar_t__ has_thrpt_enh; } ;
struct wilc {struct wilc_spi* bus_data; int /*<<< orphan*/  dev; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IRG_FLAGS_OFFSET ; 
 int IRQ_DMA_WD_CNT_MASK ; 
 scalar_t__ WILC_SPI_REG_BASE ; 
 int WILC_VMM_TO_HOST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct wilc*,scalar_t__,int*) ; 
 struct spi_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wilc*,int,int*) ; 

__attribute__((used)) static int FUNC4(struct wilc *wilc, u32 *int_status)
{
	struct spi_device *spi = FUNC2(wilc->dev);
	struct wilc_spi *spi_priv = wilc->bus_data;
	int ret;
	u32 tmp;
	u32 byte_cnt;
	bool unexpected_irq;
	int j;
	u32 unknown_mask;
	u32 irq_flags;
	int k = IRG_FLAGS_OFFSET + 5;

	if (spi_priv->has_thrpt_enh)
		return FUNC1(wilc, 0xe840 - WILC_SPI_REG_BASE,
					 int_status);
	ret = FUNC3(wilc, WILC_VMM_TO_HOST_SIZE, &byte_cnt);
	if (!ret) {
		FUNC0(&spi->dev,
			"Failed read WILC_VMM_TO_HOST_SIZE ...\n");
		return ret;
	}
	tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;

	j = 0;
	do {
		FUNC3(wilc, 0x1a90, &irq_flags);
		tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);

		if (spi_priv->nint > 5) {
			FUNC3(wilc, 0x1a94, &irq_flags);
			tmp |= (((irq_flags >> 0) & 0x7) << k);
		}

		unknown_mask = ~((1ul << spi_priv->nint) - 1);

		unexpected_irq = (tmp >> IRG_FLAGS_OFFSET) & unknown_mask;
		if (unexpected_irq) {
			FUNC0(&spi->dev,
				"Unexpected interrupt(2):j=%d,tmp=%x,mask=%x\n",
				j, tmp, unknown_mask);
		}

		j++;
	} while (unexpected_irq);

	*int_status = tmp;

	return ret;
}