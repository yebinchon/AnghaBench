#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct npcm_fiu_spi {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int DWR_ABPCK_4_BIT_PER_CLK ; 
 int DWR_DBPCK_4_BIT_PER_CLK ; 
 int /*<<< orphan*/  NPCM_FIU_DWR_16_BYTE_BURST ; 
 int NPCM_FIU_DWR_ABPCK_SHIFT ; 
 int /*<<< orphan*/  NPCM_FIU_DWR_CFG ; 
 int /*<<< orphan*/  NPCM_FIU_DWR_CFG_ABPCK ; 
 int /*<<< orphan*/  NPCM_FIU_DWR_CFG_DBPCK ; 
 int NPCM_FIU_DWR_DBPCK_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct npcm_fiu_spi *fiu)
{
	FUNC1(fiu->regmap, NPCM_FIU_DWR_CFG,
		     NPCM_FIU_DWR_16_BYTE_BURST);
	FUNC0(fiu->regmap, NPCM_FIU_DWR_CFG,
			   NPCM_FIU_DWR_CFG_ABPCK,
			   DWR_ABPCK_4_BIT_PER_CLK << NPCM_FIU_DWR_ABPCK_SHIFT);
	FUNC0(fiu->regmap, NPCM_FIU_DWR_CFG,
			   NPCM_FIU_DWR_CFG_DBPCK,
			   DWR_DBPCK_4_BIT_PER_CLK << NPCM_FIU_DWR_DBPCK_SHIFT);
}