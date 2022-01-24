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
struct a3700_spi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A3700_SPI_IF_CFG_REG ; 
 int A3700_SPI_TIMEOUT ; 
 int A3700_SPI_XFER_START ; 
 int A3700_SPI_XFER_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct a3700_spi*) ; 
 int FUNC1 (struct a3700_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct a3700_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct a3700_spi *a3700_spi)
{
	int timeout = A3700_SPI_TIMEOUT;
	u32 val;

	val = FUNC1(a3700_spi, A3700_SPI_IF_CFG_REG);
	val |= A3700_SPI_XFER_STOP;
	FUNC2(a3700_spi, A3700_SPI_IF_CFG_REG, val);

	while (--timeout) {
		val = FUNC1(a3700_spi, A3700_SPI_IF_CFG_REG);
		if (!(val & A3700_SPI_XFER_START))
			break;
		FUNC3(1);
	}

	FUNC0(a3700_spi);

	val &= ~A3700_SPI_XFER_STOP;
	FUNC2(a3700_spi, A3700_SPI_IF_CFG_REG, val);
}