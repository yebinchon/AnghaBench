#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct TYPE_6__ {scalar_t__ dir; int /*<<< orphan*/  nbytes; TYPE_2__ buf; } ;
struct spi_mem_op {TYPE_3__ data; } ;
struct spi_mem {TYPE_1__* spi; } ;
struct atmel_qspi {int mem; int pending; scalar_t__ regs; int /*<<< orphan*/  cmd_completion; } ;
struct TYPE_4__ {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ QSPI_CR ; 
 int QSPI_CR_LASTXFER ; 
 scalar_t__ QSPI_IDR ; 
 scalar_t__ QSPI_IER ; 
 scalar_t__ QSPI_IFR ; 
 scalar_t__ QSPI_SR ; 
 int QSPI_SR_CMD_COMPLETED ; 
 scalar_t__ SPI_MEM_DATA_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct atmel_qspi*,struct spi_mem_op const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct atmel_qspi* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct spi_mem *mem, const struct spi_mem_op *op)
{
	struct atmel_qspi *aq = FUNC6(mem->spi->master);
	u32 sr, offset;
	int err;

	err = FUNC2(aq, op, &offset);
	if (err)
		return err;

	/* Skip to the final steps if there is no data */
	if (op->data.nbytes) {
		/* Dummy read of QSPI_IFR to synchronize APB and AHB accesses */
		(void)FUNC4(aq->regs + QSPI_IFR);

		/* Send/Receive data */
		if (op->data.dir == SPI_MEM_DATA_IN)
			FUNC0(op->data.buf.in, aq->mem + offset,
				       op->data.nbytes);
		else
			FUNC1(aq->mem + offset, op->data.buf.out,
				     op->data.nbytes);

		/* Release the chip-select */
		FUNC8(QSPI_CR_LASTXFER, aq->regs + QSPI_CR);
	}

	/* Poll INSTRuction End status */
	sr = FUNC4(aq->regs + QSPI_SR);
	if ((sr & QSPI_SR_CMD_COMPLETED) == QSPI_SR_CMD_COMPLETED)
		return err;

	/* Wait for INSTRuction End interrupt */
	FUNC5(&aq->cmd_completion);
	aq->pending = sr & QSPI_SR_CMD_COMPLETED;
	FUNC8(QSPI_SR_CMD_COMPLETED, aq->regs + QSPI_IER);
	if (!FUNC7(&aq->cmd_completion,
					 FUNC3(1000)))
		err = -ETIMEDOUT;
	FUNC8(QSPI_SR_CMD_COMPLETED, aq->regs + QSPI_IDR);

	return err;
}