#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_14__ {scalar_t__ dir; } ;
struct TYPE_16__ {TYPE_5__ data; } ;
struct TYPE_15__ {TYPE_7__ op_tmpl; scalar_t__ length; } ;
struct spi_mem_dirmap_desc {int nodirmap; TYPE_6__ info; TYPE_4__* mem; } ;
struct regmap {int dummy; } ;
struct npcm_fiu_spi {int /*<<< orphan*/  spix_mode; TYPE_8__* dev; TYPE_2__* info; TYPE_1__* res_mem; struct npcm_fiu_chip* chip; } ;
struct npcm_fiu_chip {scalar_t__ flash_region_mapped_ptr; } ;
struct TYPE_17__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_13__ {TYPE_3__* spi; } ;
struct TYPE_12__ {size_t chip_select; int /*<<< orphan*/  master; } ;
struct TYPE_11__ {int max_map_size; } ;
struct TYPE_10__ {scalar_t__ start; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int /*<<< orphan*/  NPCM7XX_INTCR3_FIU_FIX ; 
 int /*<<< orphan*/  NPCM7XX_INTCR3_OFFSET ; 
 scalar_t__ SPI_MEM_DATA_IN ; 
 scalar_t__ SPI_MEM_DATA_OUT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_8__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct npcm_fiu_spi*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (struct npcm_fiu_spi*) ; 
 int /*<<< orphan*/  FUNC5 (struct npcm_fiu_spi*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct npcm_fiu_spi* FUNC8 (int /*<<< orphan*/ ) ; 
 struct regmap* FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct spi_mem_dirmap_desc *desc)
{
	struct npcm_fiu_spi *fiu =
		FUNC8(desc->mem->spi->master);
	struct npcm_fiu_chip *chip = &fiu->chip[desc->mem->spi->chip_select];
	struct regmap *gcr_regmap;

	if (!fiu->res_mem) {
		FUNC1(fiu->dev, "Reserved memory not defined, direct read disabled\n");
		desc->nodirmap = true;
		return 0;
	}

	if (!fiu->spix_mode &&
	    desc->info.op_tmpl.data.dir == SPI_MEM_DATA_OUT) {
		desc->nodirmap = true;
		return 0;
	}

	if (!chip->flash_region_mapped_ptr) {
		chip->flash_region_mapped_ptr =
			FUNC2(fiu->dev, (fiu->res_mem->start +
							(fiu->info->max_map_size *
						    desc->mem->spi->chip_select)),
					     (u32)desc->info.length);
		if (!chip->flash_region_mapped_ptr) {
			FUNC1(fiu->dev, "Error mapping memory region, direct read disabled\n");
			desc->nodirmap = true;
			return 0;
		}
	}

	if (FUNC6(fiu->dev->of_node, "nuvoton,npcm750-fiu")) {
		gcr_regmap =
			FUNC9("nuvoton,npcm750-gcr");
		if (FUNC0(gcr_regmap)) {
			FUNC1(fiu->dev, "Didn't find nuvoton,npcm750-gcr, direct read disabled\n");
			desc->nodirmap = true;
			return 0;
		}
		FUNC7(gcr_regmap, NPCM7XX_INTCR3_OFFSET,
				   NPCM7XX_INTCR3_FIU_FIX,
				   NPCM7XX_INTCR3_FIU_FIX);
	}

	if (desc->info.op_tmpl.data.dir == SPI_MEM_DATA_IN) {
		if (!fiu->spix_mode)
			FUNC3(fiu, &desc->info.op_tmpl);
		else
			FUNC4(fiu);

	} else {
		FUNC5(fiu);
	}

	return 0;
}