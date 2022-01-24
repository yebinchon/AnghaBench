#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ti_qspi {scalar_t__ mmap_size; scalar_t__ mmap_base; int /*<<< orphan*/  list_lock; scalar_t__ rx_chan; int /*<<< orphan*/  mmap_enabled; } ;
struct TYPE_11__ {int /*<<< orphan*/  in; } ;
struct TYPE_12__ {scalar_t__ nbytes; scalar_t__ dir; TYPE_4__ buf; int /*<<< orphan*/  buswidth; } ;
struct TYPE_10__ {int /*<<< orphan*/  nbytes; } ;
struct TYPE_9__ {int nbytes; scalar_t__ val; } ;
struct TYPE_8__ {int /*<<< orphan*/  opcode; } ;
struct spi_mem_op {TYPE_5__ data; TYPE_3__ dummy; TYPE_2__ addr; TYPE_1__ cmd; } ;
struct spi_mem {TYPE_6__* spi; } ;
struct sg_table {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 scalar_t__ SPI_MEM_DATA_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct spi_mem_op const*,struct sg_table*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct spi_mem_op const*,struct sg_table*) ; 
 struct ti_qspi* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ti_qspi*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (struct ti_qspi*,struct sg_table,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct spi_mem *mem,
			       const struct spi_mem_op *op)
{
	struct ti_qspi *qspi = FUNC5(mem->spi->master);
	u32 from = 0;
	int ret = 0;

	/* Only optimize read path. */
	if (!op->data.nbytes || op->data.dir != SPI_MEM_DATA_IN ||
	    !op->addr.nbytes || op->addr.nbytes > 4)
		return -ENOTSUPP;

	/* Address exceeds MMIO window size, fall back to regular mode. */
	from = op->addr.val;
	if (from + op->data.nbytes > qspi->mmap_size)
		return -ENOTSUPP;

	FUNC1(&qspi->list_lock);

	if (!qspi->mmap_enabled)
		FUNC8(mem->spi);
	FUNC9(mem->spi, op->cmd.opcode, op->data.buswidth,
				op->addr.nbytes, op->dummy.nbytes);

	if (qspi->rx_chan) {
		struct sg_table sgt;

		if (FUNC10(op->data.buf.in) &&
		    !FUNC3(mem->spi->master, op,
							&sgt)) {
			ret = FUNC7(qspi, sgt, from);
			FUNC4(mem->spi->master,
							     op, &sgt);
		} else {
			ret = FUNC6(qspi, from,
							op->data.buf.in,
							op->data.nbytes);
		}
	} else {
		FUNC0(op->data.buf.in, qspi->mmap_base + from,
			      op->data.nbytes);
	}

	FUNC2(&qspi->list_lock);

	return ret;
}