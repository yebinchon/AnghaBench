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
struct spi_imx_data {int count; scalar_t__ base; int /*<<< orphan*/  bits_per_word; scalar_t__ tx_buf; } ;

/* Variables and functions */
 scalar_t__ MXC_CSPITXDATA ; 
 int FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct spi_imx_data *spi_imx)
{
	u32 val = 0;
#ifdef __LITTLE_ENDIAN
	unsigned int bytes_per_word;
#endif

	if (spi_imx->tx_buf) {
		val = *(u32 *)spi_imx->tx_buf;
		spi_imx->tx_buf += sizeof(u32);
	}

	spi_imx->count -= sizeof(u32);
#ifdef __LITTLE_ENDIAN
	bytes_per_word = spi_imx_bytes_per_word(spi_imx->bits_per_word);

	if (bytes_per_word == 1)
		val = cpu_to_be32(val);
	else if (bytes_per_word == 2)
		val = (val << 16) | (val >> 16);
#endif
	FUNC2(val, spi_imx->base + MXC_CSPITXDATA);
}