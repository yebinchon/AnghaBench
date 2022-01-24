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
typedef  int /*<<< orphan*/  u16 ;
struct ti_qspi {unsigned int cmd; scalar_t__ base; int /*<<< orphan*/  dev; int /*<<< orphan*/  dc; } ;
struct spi_transfer {int rx_nbits; int bits_per_word; int /*<<< orphan*/ * rx_buf; } ;

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 unsigned int QSPI_RD_DUAL ; 
 unsigned int QSPI_RD_QUAD ; 
 unsigned int QSPI_RD_SNGL ; 
 int /*<<< orphan*/  QSPI_SPI_CMD_REG ; 
 scalar_t__ QSPI_SPI_DATA_REG ; 
#define  SPI_NBITS_DUAL 129 
#define  SPI_NBITS_QUAD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct ti_qspi*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (struct ti_qspi*) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_qspi*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ti_qspi *qspi, struct spi_transfer *t,
			 int count)
{
	int wlen;
	unsigned int cmd;
	u8 *rxbuf;

	rxbuf = t->rx_buf;
	cmd = qspi->cmd;
	switch (t->rx_nbits) {
	case SPI_NBITS_DUAL:
		cmd |= QSPI_RD_DUAL;
		break;
	case SPI_NBITS_QUAD:
		cmd |= QSPI_RD_QUAD;
		break;
	default:
		cmd |= QSPI_RD_SNGL;
		break;
	}
	wlen = t->bits_per_word >> 3;	/* in bytes */

	while (count) {
		FUNC0(qspi->dev, "rx cmd %08x dc %08x\n", cmd, qspi->dc);
		if (FUNC2(qspi))
			return -EBUSY;

		FUNC7(qspi, cmd, QSPI_SPI_CMD_REG);
		if (FUNC6(qspi)) {
			FUNC1(qspi->dev, "read timed out\n");
			return -ETIMEDOUT;
		}
		switch (wlen) {
		case 1:
			*rxbuf = FUNC3(qspi->base + QSPI_SPI_DATA_REG);
			break;
		case 2:
			*((u16 *)rxbuf) = FUNC5(qspi->base + QSPI_SPI_DATA_REG);
			break;
		case 4:
			*((u32 *)rxbuf) = FUNC4(qspi->base + QSPI_SPI_DATA_REG);
			break;
		}
		rxbuf += wlen;
		count -= wlen;
	}

	return 0;
}