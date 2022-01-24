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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct sli4_sge_diseed {int word2; int word3; void* sge_len; void* addr_hi; void* addr_lo; void* ref_tag; void* ref_tag_tran; } ;
struct sli4_sge {int word2; int word3; void* sge_len; void* addr_hi; void* addr_lo; void* ref_tag; void* ref_tag_tran; } ;
struct sli4_hybrid_sgl {scalar_t__ dma_sgl; int /*<<< orphan*/  dma_phys_sgl; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; } ;
struct scatterlist {int dummy; } ;
struct lpfc_io_buf {scalar_t__ seg_cnt; } ;
struct lpfc_hba {int border_sge_num; int cfg_sg_dma_buf_size; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int BG_ERR_CHECK ; 
 int BG_ERR_SWAP ; 
 scalar_t__ DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  LPFC_CHECK_PROTECT_GUARD ; 
 int /*<<< orphan*/  LPFC_CHECK_PROTECT_REF ; 
 int LPFC_SGE_TYPE_DATA ; 
 int LPFC_SGE_TYPE_DISEED ; 
 int LPFC_SGE_TYPE_LSP ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sli4_sge_diseed*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sli4_sge_diseed*,int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (struct lpfc_hba*,struct scsi_cmnd*,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,struct scsi_cmnd*,int*,int*) ; 
 scalar_t__ FUNC5 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 struct sli4_hybrid_sgl* FUNC6 (struct lpfc_hba*,struct lpfc_io_buf*) ; 
 int FUNC7 (struct lpfc_hba*,struct scsi_cmnd*,int*,int*) ; 
 int /*<<< orphan*/  lpfc_sli4_sge_dif_ai ; 
 int /*<<< orphan*/  lpfc_sli4_sge_dif_ce ; 
 int /*<<< orphan*/  lpfc_sli4_sge_dif_me ; 
 int /*<<< orphan*/  lpfc_sli4_sge_dif_oprx ; 
 int /*<<< orphan*/  lpfc_sli4_sge_dif_optx ; 
 int /*<<< orphan*/  lpfc_sli4_sge_dif_re ; 
 int /*<<< orphan*/  lpfc_sli4_sge_last ; 
 int /*<<< orphan*/  lpfc_sli4_sge_offset ; 
 int /*<<< orphan*/  lpfc_sli4_sge_type ; 
 int /*<<< orphan*/  FUNC8 (struct sli4_sge_diseed*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC12 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*) ; 
 int FUNC14 (struct scatterlist*) ; 
 struct scatterlist* FUNC15 (struct scatterlist*) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int
FUNC17(struct lpfc_hba *phba, struct scsi_cmnd *sc,
		struct sli4_sge *sgl, int datasegcnt,
		struct lpfc_io_buf *lpfc_cmd)
{
	struct scatterlist *sgde = NULL; /* s/g data entry */
	struct sli4_sge_diseed *diseed = NULL;
	dma_addr_t physaddr;
	int i = 0, num_sge = 0, status;
	uint32_t reftag;
	uint8_t txop, rxop;
#ifdef CONFIG_SCSI_LPFC_DEBUG_FS
	uint32_t rc;
#endif
	uint32_t checking = 1;
	uint32_t dma_len;
	uint32_t dma_offset = 0;
	struct sli4_hybrid_sgl *sgl_xtra = NULL;
	int j;
	bool lsp_just_set = false;

	status  = FUNC7(phba, sc, &txop, &rxop);
	if (status)
		goto out;

	/* extract some info from the scsi command for pde*/
	reftag = (uint32_t)FUNC11(sc); /* Truncate LBA */

#ifdef CONFIG_SCSI_LPFC_DEBUG_FS
	rc = lpfc_bg_err_inject(phba, sc, &reftag, NULL, 1);
	if (rc) {
		if (rc & BG_ERR_SWAP)
			lpfc_bg_err_opcodes(phba, sc, &txop, &rxop);
		if (rc & BG_ERR_CHECK)
			checking = 0;
	}
#endif

	/* setup DISEED with what we have */
	diseed = (struct sli4_sge_diseed *) sgl;
	FUNC8(diseed, 0, sizeof(struct sli4_sge_diseed));
	FUNC1(lpfc_sli4_sge_type, sgl, LPFC_SGE_TYPE_DISEED);

	/* Endianness conversion if necessary */
	diseed->ref_tag = FUNC2(reftag);
	diseed->ref_tag_tran = diseed->ref_tag;

	/*
	 * We only need to check the data on READs, for WRITEs
	 * protection data is automatically generated, not checked.
	 */
	if (sc->sc_data_direction == DMA_FROM_DEVICE) {
		if (FUNC5(sc, LPFC_CHECK_PROTECT_GUARD))
			FUNC1(lpfc_sli4_sge_dif_ce, diseed, checking);
		else
			FUNC1(lpfc_sli4_sge_dif_ce, diseed, 0);

		if (FUNC5(sc, LPFC_CHECK_PROTECT_REF))
			FUNC1(lpfc_sli4_sge_dif_re, diseed, checking);
		else
			FUNC1(lpfc_sli4_sge_dif_re, diseed, 0);
	}

	/* setup DISEED with the rest of the info */
	FUNC1(lpfc_sli4_sge_dif_optx, diseed, txop);
	FUNC1(lpfc_sli4_sge_dif_oprx, diseed, rxop);

	FUNC1(lpfc_sli4_sge_dif_ai, diseed, 1);
	FUNC1(lpfc_sli4_sge_dif_me, diseed, 0);

	/* Endianness conversion if necessary for DISEED */
	diseed->word2 = FUNC2(diseed->word2);
	diseed->word3 = FUNC2(diseed->word3);

	/* advance bpl and increment sge count */
	num_sge++;
	sgl++;

	/* assumption: caller has already run dma_map_sg on command data */
	sgde = FUNC12(sc);
	j = 3;
	for (i = 0; i < datasegcnt; i++) {
		/* clear it */
		sgl->word2 = 0;

		/* do we need to expand the segment */
		if (!lsp_just_set && !((j + 1) % phba->border_sge_num) &&
		    ((datasegcnt - 1) != i)) {
			/* set LSP type */
			FUNC1(lpfc_sli4_sge_type, sgl, LPFC_SGE_TYPE_LSP);

			sgl_xtra = FUNC6(phba, lpfc_cmd);

			if (FUNC16(!sgl_xtra)) {
				lpfc_cmd->seg_cnt = 0;
				return 0;
			}
			sgl->addr_lo = FUNC2(FUNC10(
						sgl_xtra->dma_phys_sgl));
			sgl->addr_hi = FUNC2(FUNC9(
						sgl_xtra->dma_phys_sgl));

		} else {
			FUNC1(lpfc_sli4_sge_type, sgl, LPFC_SGE_TYPE_DATA);
		}

		if (!(FUNC0(lpfc_sli4_sge_type, sgl) & LPFC_SGE_TYPE_LSP)) {
			if ((datasegcnt - 1) == i)
				FUNC1(lpfc_sli4_sge_last, sgl, 1);
			physaddr = FUNC13(sgde);
			dma_len = FUNC14(sgde);
			sgl->addr_lo = FUNC2(FUNC10(physaddr));
			sgl->addr_hi = FUNC2(FUNC9(physaddr));

			FUNC1(lpfc_sli4_sge_offset, sgl, dma_offset);
			sgl->word2 = FUNC2(sgl->word2);
			sgl->sge_len = FUNC2(dma_len);

			dma_offset += dma_len;
			sgde = FUNC15(sgde);

			sgl++;
			num_sge++;
			lsp_just_set = false;

		} else {
			sgl->word2 = FUNC2(sgl->word2);
			sgl->sge_len = FUNC2(phba->cfg_sg_dma_buf_size);

			sgl = (struct sli4_sge *)sgl_xtra->dma_sgl;
			i = i - 1;

			lsp_just_set = true;
		}

		j++;

	}

out:
	return num_sge;
}