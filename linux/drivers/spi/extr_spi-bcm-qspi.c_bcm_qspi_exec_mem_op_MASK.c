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
typedef  int /*<<< orphan*/  u_char ;
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/ * in; } ;
struct TYPE_6__ {int nbytes; scalar_t__ dir; TYPE_1__ buf; } ;
struct TYPE_5__ {int nbytes; int val; } ;
struct spi_mem_op {TYPE_3__ data; TYPE_2__ addr; } ;
struct spi_mem {struct spi_device* spi; } ;
struct spi_device {int /*<<< orphan*/  master; } ;
struct bcm_qspi {int dummy; } ;

/* Variables and functions */
 int ADDR_4MB_MASK ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (uintptr_t,int) ; 
 scalar_t__ SPI_MEM_DATA_IN ; 
 int FUNC1 (struct spi_device*,struct spi_mem_op const*) ; 
 int FUNC2 (struct bcm_qspi*,struct spi_mem_op const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bcm_qspi*) ; 
 int FUNC4 (struct spi_device*,struct spi_mem_op const*) ; 
 struct bcm_qspi* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct spi_mem *mem,
				const struct spi_mem_op *op)
{
	struct spi_device *spi = mem->spi;
	struct bcm_qspi *qspi = FUNC5(spi->master);
	int ret = 0;
	bool mspi_read = false;
	u32 addr = 0, len;
	u_char *buf;

	if (!op->data.nbytes || !op->addr.nbytes || op->addr.nbytes > 4 ||
	    op->data.dir != SPI_MEM_DATA_IN)
		return -ENOTSUPP;

	buf = op->data.buf.in;
	addr = op->addr.val;
	len = op->data.nbytes;

	if (FUNC3(qspi) == true) {
		/*
		 * The address coming into this function is a raw flash offset.
		 * But for BSPI <= V3, we need to convert it to a remapped BSPI
		 * address. If it crosses a 4MB boundary, just revert back to
		 * using MSPI.
		 */
		addr = (addr + 0xc00000) & 0xffffff;

		if ((~ADDR_4MB_MASK & addr) ^
		    (~ADDR_4MB_MASK & (addr + len - 1)))
			mspi_read = true;
	}

	/* non-aligned and very short transfers are handled by MSPI */
	if (!FUNC0((uintptr_t)addr, 4) || !FUNC0((uintptr_t)buf, 4) ||
	    len < 4)
		mspi_read = true;

	if (mspi_read)
		return FUNC4(spi, op);

	ret = FUNC2(qspi, op, 0);

	if (!ret)
		ret = FUNC1(spi, op);

	return ret;
}