#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct stm32_qspi {scalar_t__ io_base; int /*<<< orphan*/  data_completion; } ;
struct TYPE_2__ {int /*<<< orphan*/  nbytes; } ;
struct spi_mem_op {TYPE_1__ data; } ;

/* Variables and functions */
 int CR_TCIE ; 
 int CR_TEIE ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int FCR_CTCF ; 
 int FCR_CTEF ; 
 scalar_t__ QSPI_CR ; 
 scalar_t__ QSPI_FCR ; 
 scalar_t__ QSPI_SR ; 
 int SR_TCF ; 
 int SR_TEF ; 
 int /*<<< orphan*/  STM32_COMP_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct stm32_qspi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct stm32_qspi *qspi,
			       const struct spi_mem_op *op)
{
	u32 cr, sr;
	int err = 0;

	if (!op->data.nbytes)
		return FUNC3(qspi);

	if (FUNC1(qspi->io_base + QSPI_SR) & SR_TCF)
		goto out;

	FUNC2(&qspi->data_completion);
	cr = FUNC1(qspi->io_base + QSPI_CR);
	FUNC5(cr | CR_TCIE | CR_TEIE, qspi->io_base + QSPI_CR);

	if (!FUNC4(&qspi->data_completion,
				FUNC0(STM32_COMP_TIMEOUT_MS))) {
		err = -ETIMEDOUT;
	} else {
		sr = FUNC1(qspi->io_base + QSPI_SR);
		if (sr & SR_TEF)
			err = -EIO;
	}

out:
	/* clear flags */
	FUNC5(FCR_CTCF | FCR_CTEF, qspi->io_base + QSPI_FCR);

	return err;
}