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
typedef  int u8 ;
typedef  int u32 ;
struct spi_imx_data {int count; scalar_t__ base; scalar_t__ tx_buf; int /*<<< orphan*/  bits_per_word; } ;

/* Variables and functions */
 scalar_t__ MXC_CSPITXDATA ; 
 int /*<<< orphan*/  FUNC0 (struct spi_imx_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_imx_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct spi_imx_data *spi_imx)
{
	int unaligned;
	u32 val = 0;

	unaligned = spi_imx->count % 4;

	if (!unaligned) {
		FUNC0(spi_imx);
		return;
	}

	if (FUNC2(spi_imx->bits_per_word) == 2) {
		FUNC1(spi_imx);
		return;
	}

	while (unaligned--) {
		if (spi_imx->tx_buf) {
			val |= *(u8 *)spi_imx->tx_buf << (8 * unaligned);
			spi_imx->tx_buf++;
		}
		spi_imx->count--;
	}

	FUNC3(val, spi_imx->base + MXC_CSPITXDATA);
}