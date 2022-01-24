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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_8__ {int nbytes; int val; int /*<<< orphan*/  buswidth; } ;
struct TYPE_7__ {int /*<<< orphan*/  buswidth; } ;
struct TYPE_6__ {int /*<<< orphan*/  buswidth; } ;
struct spi_mem_op {TYPE_4__ addr; TYPE_3__ data; TYPE_2__ cmd; } ;
struct spi_mem {TYPE_1__* spi; } ;
struct npcm_fiu_spi {int /*<<< orphan*/  regmap; } ;
struct TYPE_5__ {int chip_select; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ NPCM_FIU_UMA_ADDR ; 
 scalar_t__ NPCM_FIU_UMA_CFG ; 
 int NPCM_FIU_UMA_CFG_ADBPCK_SHIFT ; 
 int NPCM_FIU_UMA_CFG_ADDSIZ_SHIFT ; 
 int NPCM_FIU_UMA_CFG_WDATSIZ_SHIFT ; 
 int NPCM_FIU_UMA_CFG_WDBPCK_SHIFT ; 
 int /*<<< orphan*/  NPCM_FIU_UMA_CMD ; 
 int /*<<< orphan*/  NPCM_FIU_UMA_CMD_CMD ; 
 int /*<<< orphan*/  NPCM_FIU_UMA_CTS ; 
 int /*<<< orphan*/  NPCM_FIU_UMA_CTS_DEV_NUM ; 
 int NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT ; 
 int NPCM_FIU_UMA_CTS_EXEC_DONE ; 
 scalar_t__ NPCM_FIU_UMA_DW0 ; 
 int /*<<< orphan*/  UMA_MICRO_SEC_TIMEOUT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct npcm_fiu_spi* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct spi_mem *mem,
			      const struct spi_mem_op *op, u8 cmd,
			      bool is_address_size, u8 *data, u32 data_size)
{
	struct npcm_fiu_spi *fiu =
		FUNC8(mem->spi->master);
	u32 uma_cfg = FUNC0(10);
	u32 data_reg[4] = {0};
	u32 val;
	u32 i;

	FUNC5(fiu->regmap, NPCM_FIU_UMA_CTS,
			   NPCM_FIU_UMA_CTS_DEV_NUM,
			   (mem->spi->chip_select <<
			    NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT));

	FUNC5(fiu->regmap, NPCM_FIU_UMA_CMD,
			   NPCM_FIU_UMA_CMD_CMD, cmd);

	if (data_size) {
		FUNC3(data_reg, data, data_size);
		for (i = 0; i < FUNC1(data_size, 4); i++)
			FUNC6(fiu->regmap, NPCM_FIU_UMA_DW0 + (i * 4),
				     data_reg[i]);
	}

	if (is_address_size) {
		uma_cfg |= FUNC2(op->cmd.buswidth);
		uma_cfg |= FUNC2(op->addr.buswidth) <<
			NPCM_FIU_UMA_CFG_ADBPCK_SHIFT;
		uma_cfg |= FUNC2(op->data.buswidth) <<
			NPCM_FIU_UMA_CFG_WDBPCK_SHIFT;
		uma_cfg |= op->addr.nbytes << NPCM_FIU_UMA_CFG_ADDSIZ_SHIFT;
		FUNC6(fiu->regmap, NPCM_FIU_UMA_ADDR, op->addr.val);
	} else {
		FUNC6(fiu->regmap, NPCM_FIU_UMA_ADDR, 0x0);
	}

	uma_cfg |= (data_size << NPCM_FIU_UMA_CFG_WDATSIZ_SHIFT);
	FUNC6(fiu->regmap, NPCM_FIU_UMA_CFG, uma_cfg);

	FUNC7(fiu->regmap, NPCM_FIU_UMA_CTS,
			  NPCM_FIU_UMA_CTS_EXEC_DONE,
			  NPCM_FIU_UMA_CTS_EXEC_DONE);

	return FUNC4(fiu->regmap, NPCM_FIU_UMA_CTS, val,
				       (!(val & NPCM_FIU_UMA_CTS_EXEC_DONE)), 0,
					UMA_MICRO_SEC_TIMEOUT);
}