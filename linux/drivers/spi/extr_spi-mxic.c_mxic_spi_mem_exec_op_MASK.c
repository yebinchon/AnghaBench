#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_11__ {int* out; int /*<<< orphan*/ * in; } ;
struct TYPE_12__ {int nbytes; scalar_t__ dir; TYPE_5__ buf; int /*<<< orphan*/  buswidth; } ;
struct TYPE_10__ {int nbytes; } ;
struct TYPE_9__ {int nbytes; int val; int /*<<< orphan*/  buswidth; } ;
struct TYPE_8__ {int opcode; int /*<<< orphan*/  buswidth; } ;
struct spi_mem_op {TYPE_6__ data; TYPE_4__ dummy; TYPE_3__ addr; TYPE_2__ cmd; } ;
struct spi_mem {TYPE_1__* spi; } ;
struct mxic_spi {scalar_t__ regs; } ;
struct TYPE_7__ {int mode; int /*<<< orphan*/  chip_select; int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 scalar_t__ HC_CFG ; 
 int FUNC0 (int) ; 
 int HC_CFG_MAN_CS_ASSERT ; 
 int HC_CFG_MAN_CS_EN ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HC_CFG_TYPE_SPI_NOR ; 
 scalar_t__ HC_EN ; 
 int HC_EN_BIT ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (int) ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (int) ; 
 int OP_READ ; 
 scalar_t__ SPI_MEM_DATA_IN ; 
 scalar_t__ SPI_MEM_DATA_OUT ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mxic_spi*,int*,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (struct mxic_spi*,int /*<<< orphan*/ ) ; 
 int FUNC14 (scalar_t__) ; 
 struct mxic_spi* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC17(struct spi_mem *mem,
				const struct spi_mem_op *op)
{
	struct mxic_spi *mxic = FUNC15(mem->spi->master);
	int nio = 1, i, ret;
	u32 ss_ctrl;
	u8 addr[8];

	ret = FUNC13(mxic, mem->spi->max_speed_hz);
	if (ret)
		return ret;

	if (mem->spi->mode & (SPI_TX_QUAD | SPI_RX_QUAD))
		nio = 4;
	else if (mem->spi->mode & (SPI_TX_DUAL | SPI_RX_DUAL))
		nio = 2;

	FUNC16(FUNC1(nio) |
	       FUNC3(mem->spi->chip_select, HC_CFG_TYPE_SPI_NOR) |
	       FUNC2(mem->spi->chip_select) | FUNC0(1) |
	       HC_CFG_MAN_CS_EN,
	       mxic->regs + HC_CFG);
	FUNC16(HC_EN_BIT, mxic->regs + HC_EN);

	ss_ctrl = FUNC7(1) | FUNC6(FUNC11(op->cmd.buswidth) - 1);

	if (op->addr.nbytes)
		ss_ctrl |= FUNC5(op->addr.nbytes) |
			   FUNC4(FUNC11(op->addr.buswidth) - 1);

	if (op->dummy.nbytes)
		ss_ctrl |= FUNC9(op->dummy.nbytes);

	if (op->data.nbytes) {
		ss_ctrl |= FUNC8(FUNC11(op->data.buswidth) - 1);
		if (op->data.dir == SPI_MEM_DATA_IN)
			ss_ctrl |= OP_READ;
	}

	FUNC16(ss_ctrl, mxic->regs + FUNC10(mem->spi->chip_select));

	FUNC16(FUNC14(mxic->regs + HC_CFG) | HC_CFG_MAN_CS_ASSERT,
	       mxic->regs + HC_CFG);

	ret = FUNC12(mxic, &op->cmd.opcode, NULL, 1);
	if (ret)
		goto out;

	for (i = 0; i < op->addr.nbytes; i++)
		addr[i] = op->addr.val >> (8 * (op->addr.nbytes - i - 1));

	ret = FUNC12(mxic, addr, NULL, op->addr.nbytes);
	if (ret)
		goto out;

	ret = FUNC12(mxic, NULL, NULL, op->dummy.nbytes);
	if (ret)
		goto out;

	ret = FUNC12(mxic,
				 op->data.dir == SPI_MEM_DATA_OUT ?
				 op->data.buf.out : NULL,
				 op->data.dir == SPI_MEM_DATA_IN ?
				 op->data.buf.in : NULL,
				 op->data.nbytes);

out:
	FUNC16(FUNC14(mxic->regs + HC_CFG) & ~HC_CFG_MAN_CS_ASSERT,
	       mxic->regs + HC_CFG);
	FUNC16(0, mxic->regs + HC_EN);

	return ret;
}