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
struct bfa_s {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  qe; } ;
struct TYPE_4__ {int /*<<< orphan*/  qe; } ;
struct bfa_meminfo_s {TYPE_2__ kva_info; TYPE_1__ dma_info; } ;
struct bfa_mem_dma_s {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  min_cfg; } ;
struct bfa_iocfc_cfg_s {TYPE_3__ drvcfg; } ;

/* Variables and functions */
 struct bfa_mem_dma_s* FUNC0 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC1 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC2 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC3 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC4 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC5 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC6 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC7 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC15 (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC16 (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC20 (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC21 (struct bfa_meminfo_s*,struct bfa_mem_dma_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC27 (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC28 (void*,int /*<<< orphan*/ ,int) ; 

void
FUNC29(struct bfa_iocfc_cfg_s *cfg, struct bfa_meminfo_s *meminfo,
		struct bfa_s *bfa)
{
	struct bfa_mem_dma_s *port_dma = FUNC6(bfa);
	struct bfa_mem_dma_s *ablk_dma = FUNC0(bfa);
	struct bfa_mem_dma_s *cee_dma = FUNC1(bfa);
	struct bfa_mem_dma_s *sfp_dma = FUNC7(bfa);
	struct bfa_mem_dma_s *flash_dma = FUNC3(bfa);
	struct bfa_mem_dma_s *diag_dma = FUNC2(bfa);
	struct bfa_mem_dma_s *phy_dma = FUNC5(bfa);
	struct bfa_mem_dma_s *fru_dma = FUNC4(bfa);

	FUNC9((cfg == NULL) || (meminfo == NULL));

	FUNC28((void *)meminfo, 0, sizeof(struct bfa_meminfo_s));

	/* Initialize the DMA & KVA meminfo queues */
	FUNC8(&meminfo->dma_info.qe);
	FUNC8(&meminfo->kva_info.qe);

	FUNC19(cfg, meminfo, bfa);
	FUNC26(cfg, meminfo, bfa);
	FUNC15(cfg, meminfo, bfa);
	FUNC16(cfg, meminfo, bfa);
	FUNC20(cfg, meminfo, bfa);
	FUNC27(cfg, meminfo, bfa);
	FUNC24(cfg, meminfo, bfa);
	FUNC14(cfg, meminfo, bfa);
	FUNC12(cfg, meminfo, bfa);

	/* dma info setup */
	FUNC21(meminfo, port_dma, FUNC23());
	FUNC21(meminfo, ablk_dma, FUNC10());
	FUNC21(meminfo, cee_dma, FUNC11());
	FUNC21(meminfo, sfp_dma, FUNC25());
	FUNC21(meminfo, flash_dma,
			  FUNC17(cfg->drvcfg.min_cfg));
	FUNC21(meminfo, diag_dma, FUNC13());
	FUNC21(meminfo, phy_dma,
			  FUNC22(cfg->drvcfg.min_cfg));
	FUNC21(meminfo, fru_dma,
			  FUNC18(cfg->drvcfg.min_cfg));
}