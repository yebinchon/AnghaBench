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
typedef  scalar_t__ ulong ;
typedef  int u32 ;
struct zynqmp_qspi {int genfifobus; int genfifocs; int /*<<< orphan*/  dev; } ;
struct spi_device {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int GQSPI_CFG_START_GEN_FIFO_MASK ; 
 int /*<<< orphan*/  GQSPI_CONFIG_OFST ; 
 int GQSPI_GENFIFO_CS_HOLD ; 
 int GQSPI_GENFIFO_CS_SETUP ; 
 int GQSPI_GENFIFO_MODE_SPI ; 
 int /*<<< orphan*/  GQSPI_GEN_FIFO_OFST ; 
 int GQSPI_ISR_GENFIFOEMPTY_MASK ; 
 int /*<<< orphan*/  GQSPI_ISR_OFST ; 
 int GQSPI_ISR_TXEMPTY_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int) ; 
 struct zynqmp_qspi* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int FUNC5 (struct zynqmp_qspi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zynqmp_qspi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct spi_device *qspi, bool is_high)
{
	struct zynqmp_qspi *xqspi = FUNC3(qspi->master);
	ulong timeout;
	u32 genfifoentry = 0x0, statusreg;

	genfifoentry |= GQSPI_GENFIFO_MODE_SPI;
	genfifoentry |= xqspi->genfifobus;

	if (!is_high) {
		genfifoentry |= xqspi->genfifocs;
		genfifoentry |= GQSPI_GENFIFO_CS_SETUP;
	} else {
		genfifoentry |= GQSPI_GENFIFO_CS_HOLD;
	}

	FUNC6(xqspi, GQSPI_GEN_FIFO_OFST, genfifoentry);

	/* Dummy generic FIFO entry */
	FUNC6(xqspi, GQSPI_GEN_FIFO_OFST, 0x0);

	/* Manually start the generic FIFO command */
	FUNC6(xqspi, GQSPI_CONFIG_OFST,
			FUNC5(xqspi, GQSPI_CONFIG_OFST) |
			GQSPI_CFG_START_GEN_FIFO_MASK);

	timeout = jiffies + FUNC2(1000);

	/* Wait until the generic FIFO command is empty */
	do {
		statusreg = FUNC5(xqspi, GQSPI_ISR_OFST);

		if ((statusreg & GQSPI_ISR_GENFIFOEMPTY_MASK) &&
			(statusreg & GQSPI_ISR_TXEMPTY_MASK))
			break;
		else
			FUNC0();
	} while (!FUNC4(jiffies, timeout));

	if (FUNC4(jiffies, timeout))
		FUNC1(xqspi->dev, "Chip select timed out\n");
}