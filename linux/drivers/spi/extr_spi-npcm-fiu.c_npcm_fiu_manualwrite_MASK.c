#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_5__ {scalar_t__ out; } ;
struct TYPE_6__ {int nbytes; TYPE_1__ buf; } ;
struct spi_mem_op {TYPE_4__ cmd; TYPE_2__ data; } ;
struct spi_mem {TYPE_3__* spi; } ;
struct npcm_fiu_spi {int /*<<< orphan*/  regmap; } ;
struct TYPE_7__ {int chip_select; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int CHUNK_SIZE ; 
 int /*<<< orphan*/  NPCM_FIU_UMA_CTS ; 
 int NPCM_FIU_UMA_CTS_DEV_NUM ; 
 int NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT ; 
 int NPCM_FIU_UMA_CTS_SW_CS ; 
 int FUNC0 (struct spi_mem*,struct spi_mem_op const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct npcm_fiu_spi* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct spi_mem *mem,
				const struct spi_mem_op *op)
{
	struct npcm_fiu_spi *fiu =
		FUNC2(mem->spi->master);
	u8 *data = (u8 *)op->data.buf.out;
	u32 num_data_chunks;
	u32 remain_data;
	u32 idx = 0;
	int ret;

	num_data_chunks  = op->data.nbytes / CHUNK_SIZE;
	remain_data  = op->data.nbytes % CHUNK_SIZE;

	FUNC1(fiu->regmap, NPCM_FIU_UMA_CTS,
			   NPCM_FIU_UMA_CTS_DEV_NUM,
			   (mem->spi->chip_select <<
			    NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT));
	FUNC1(fiu->regmap, NPCM_FIU_UMA_CTS,
			   NPCM_FIU_UMA_CTS_SW_CS, 0);

	ret = FUNC0(mem, op, op->cmd.opcode, true, NULL, 0);
	if (ret)
		return ret;

	/* Starting the data writing loop in multiples of 8 */
	for (idx = 0; idx < num_data_chunks; ++idx) {
		ret = FUNC0(mem, op, data[0], false,
					 &data[1], CHUNK_SIZE - 1);
		if (ret)
			return ret;

		data += CHUNK_SIZE;
	}

	/* Handling chunk remains */
	if (remain_data > 0) {
		ret = FUNC0(mem, op, data[0], false,
					 &data[1], remain_data - 1);
		if (ret)
			return ret;
	}

	FUNC1(fiu->regmap, NPCM_FIU_UMA_CTS,
			   NPCM_FIU_UMA_CTS_SW_CS, NPCM_FIU_UMA_CTS_SW_CS);

	return 0;
}