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
struct spi_imx_data {int remainder; scalar_t__ rx_buf; scalar_t__ base; int /*<<< orphan*/  bits_per_word; } ;

/* Variables and functions */
 scalar_t__ MXC_CSPIRXDATA ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_imx_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_imx_data*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct spi_imx_data *spi_imx)
{
	int unaligned;
	u32 val;

	unaligned = spi_imx->remainder % 4;

	if (!unaligned) {
		FUNC1(spi_imx);
		return;
	}

	if (FUNC3(spi_imx->bits_per_word) == 2) {
		FUNC2(spi_imx);
		return;
	}

	val = FUNC0(spi_imx->base + MXC_CSPIRXDATA);

	while (unaligned--) {
		if (spi_imx->rx_buf) {
			*(u8 *)spi_imx->rx_buf = (val >> (8 * unaligned)) & 0xff;
			spi_imx->rx_buf++;
		}
		spi_imx->remainder--;
	}
}