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
struct TYPE_5__ {int nbytes; scalar_t__ dir; } ;
struct spi_mem_op {TYPE_2__ data; } ;
struct spi_mem {TYPE_3__* spi; } ;
struct nxp_fspi {int /*<<< orphan*/  lock; TYPE_1__* devtype_data; scalar_t__ iobase; } ;
struct TYPE_6__ {int /*<<< orphan*/  master; } ;
struct TYPE_4__ {int rxfifo; } ;

/* Variables and functions */
 scalar_t__ FSPI_STS0 ; 
 int /*<<< orphan*/  FSPI_STS0_ARB_IDLE ; 
 int /*<<< orphan*/  POLL_TOUT ; 
 scalar_t__ SPI_MEM_DATA_IN ; 
 scalar_t__ SPI_MEM_DATA_OUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct nxp_fspi*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nxp_fspi*,struct spi_mem_op const*) ; 
 int /*<<< orphan*/  FUNC5 (struct nxp_fspi*,struct spi_mem_op const*) ; 
 int /*<<< orphan*/  FUNC6 (struct nxp_fspi*) ; 
 int /*<<< orphan*/  FUNC7 (struct nxp_fspi*,struct spi_mem_op const*) ; 
 int /*<<< orphan*/  FUNC8 (struct nxp_fspi*,struct spi_mem_op const*) ; 
 int /*<<< orphan*/  FUNC9 (struct nxp_fspi*,TYPE_3__*) ; 
 struct nxp_fspi* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct spi_mem *mem, const struct spi_mem_op *op)
{
	struct nxp_fspi *f = FUNC10(mem->spi->master);
	int err = 0;

	FUNC2(&f->lock);

	/* Wait for controller being ready. */
	err = FUNC1(f, f->iobase + FSPI_STS0,
				   FSPI_STS0_ARB_IDLE, 1, POLL_TOUT, true);
	FUNC0(err);

	FUNC9(f, mem->spi);

	FUNC7(f, op);
	/*
	 * If we have large chunks of data, we read them through the AHB bus
	 * by accessing the mapped memory. In all other cases we use
	 * IP commands to access the flash.
	 */
	if (op->data.nbytes > (f->devtype_data->rxfifo - 4) &&
	    op->data.dir == SPI_MEM_DATA_IN) {
		FUNC8(f, op);
	} else {
		if (op->data.nbytes && op->data.dir == SPI_MEM_DATA_OUT)
			FUNC5(f, op);

		err = FUNC4(f, op);
	}

	/* Invalidate the data in the AHB buffer. */
	FUNC6(f);

	FUNC3(&f->lock);

	return err;
}