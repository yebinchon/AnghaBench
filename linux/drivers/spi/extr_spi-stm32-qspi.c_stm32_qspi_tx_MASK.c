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
struct stm32_qspi {scalar_t__ fmode; scalar_t__ dma_chtx; scalar_t__ dma_chrx; } ;
struct TYPE_2__ {scalar_t__ dir; int /*<<< orphan*/  nbytes; } ;
struct spi_mem_op {TYPE_1__ data; } ;

/* Variables and functions */
 scalar_t__ CCR_FMODE_MM ; 
 scalar_t__ SPI_MEM_DATA_IN ; 
 scalar_t__ SPI_MEM_DATA_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct stm32_qspi*,struct spi_mem_op const*) ; 
 int FUNC1 (struct stm32_qspi*,struct spi_mem_op const*) ; 
 int FUNC2 (struct stm32_qspi*,struct spi_mem_op const*) ; 

__attribute__((used)) static int FUNC3(struct stm32_qspi *qspi, const struct spi_mem_op *op)
{
	if (!op->data.nbytes)
		return 0;

	if (qspi->fmode == CCR_FMODE_MM)
		return FUNC1(qspi, op);
	else if ((op->data.dir == SPI_MEM_DATA_IN && qspi->dma_chrx) ||
		 (op->data.dir == SPI_MEM_DATA_OUT && qspi->dma_chtx))
		if (!FUNC0(qspi, op))
			return 0;

	return FUNC2(qspi, op);
}