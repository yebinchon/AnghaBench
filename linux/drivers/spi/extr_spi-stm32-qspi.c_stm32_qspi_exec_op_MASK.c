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
struct stm32_qspi {int /*<<< orphan*/  lock; } ;
struct spi_mem_op {int dummy; } ;
struct spi_mem {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct stm32_qspi* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct spi_mem*,struct spi_mem_op const*) ; 

__attribute__((used)) static int FUNC4(struct spi_mem *mem, const struct spi_mem_op *op)
{
	struct stm32_qspi *qspi = FUNC2(mem->spi->master);
	int ret;

	FUNC0(&qspi->lock);
	ret = FUNC3(mem, op);
	FUNC1(&qspi->lock);

	return ret;
}