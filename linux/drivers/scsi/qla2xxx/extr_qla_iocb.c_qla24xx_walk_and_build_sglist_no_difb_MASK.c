#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct scatterlist {int dummy; } ;
struct qla_tc_param {scalar_t__ blk_sz; int* ctx_dsd_alloced; TYPE_5__* ctx; struct scatterlist* prot_sg; int /*<<< orphan*/  sg; int /*<<< orphan*/  bufflen; } ;
struct qla_hw_data {int /*<<< orphan*/  dl_dma_pool; } ;
struct qla2_sgx {scalar_t__ dma_len; scalar_t__ dma_addr; int /*<<< orphan*/  cur_sg; int /*<<< orphan*/  tot_bytes; TYPE_6__* sp; } ;
struct dsd_dma {scalar_t__ dsd_list_dma; int /*<<< orphan*/  list; void* dsd_addr; } ;
struct dsd64 {void* length; scalar_t__ address; } ;
struct TYPE_11__ {TYPE_2__* crc_ctx; } ;
struct TYPE_12__ {TYPE_3__ scmd; } ;
struct TYPE_14__ {int /*<<< orphan*/  flags; TYPE_4__ u; } ;
typedef  TYPE_6__ srb_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_13__ {int /*<<< orphan*/  dsd_list; } ;
struct TYPE_10__ {int /*<<< orphan*/  dsd_list; } ;
struct TYPE_9__ {scalar_t__ sector_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct scsi_cmnd* FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ QLA_DSDS_PER_IOCB ; 
 int /*<<< orphan*/  SRB_CRC_CTX_DSD_VALID ; 
 void* FUNC2 (scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsd_dma*) ; 
 struct dsd_dma* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct qla2_sgx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC9 (scalar_t__,struct qla2_sgx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC11 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC13 (struct scatterlist*) ; 
 scalar_t__ FUNC14 (struct scatterlist*) ; 
 struct scatterlist* FUNC15 (struct scatterlist*) ; 

int
FUNC16(struct qla_hw_data *ha, srb_t *sp,
	struct dsd64 *dsd, uint16_t tot_dsds, struct qla_tc_param *tc)
{
	void *next_dsd;
	uint8_t avail_dsds = 0;
	uint32_t dsd_list_len;
	struct dsd_dma *dsd_ptr;
	struct scatterlist *sg_prot;
	struct dsd64 *cur_dsd = dsd;
	uint16_t	used_dsds = tot_dsds;
	uint32_t	prot_int; /* protection interval */
	uint32_t	partial;
	struct qla2_sgx sgx;
	dma_addr_t	sle_dma;
	uint32_t	sle_dma_len, tot_prot_dma_len = 0;
	struct scsi_cmnd *cmd;

	FUNC7(&sgx, 0, sizeof(struct qla2_sgx));
	if (sp) {
		cmd = FUNC1(sp);
		prot_int = cmd->device->sector_size;

		sgx.tot_bytes = FUNC10(cmd);
		sgx.cur_sg = FUNC12(cmd);
		sgx.sp = sp;

		sg_prot = FUNC11(cmd);
	} else if (tc) {
		prot_int      = tc->blk_sz;
		sgx.tot_bytes = tc->bufflen;
		sgx.cur_sg    = tc->sg;
		sg_prot	      = tc->prot_sg;
	} else {
		FUNC0();
		return 1;
	}

	while (FUNC9(prot_int, &sgx, &partial)) {

		sle_dma = sgx.dma_addr;
		sle_dma_len = sgx.dma_len;
alloc_and_fill:
		/* Allocate additional continuation packets? */
		if (avail_dsds == 0) {
			avail_dsds = (used_dsds > QLA_DSDS_PER_IOCB) ?
					QLA_DSDS_PER_IOCB : used_dsds;
			dsd_list_len = (avail_dsds + 1) * 12;
			used_dsds -= avail_dsds;

			/* allocate tracking DS */
			dsd_ptr = FUNC5(sizeof(struct dsd_dma), GFP_ATOMIC);
			if (!dsd_ptr)
				return 1;

			/* allocate new list */
			dsd_ptr->dsd_addr = next_dsd =
			    FUNC3(ha->dl_dma_pool, GFP_ATOMIC,
				&dsd_ptr->dsd_list_dma);

			if (!next_dsd) {
				/*
				 * Need to cleanup only this dsd_ptr, rest
				 * will be done by sp_free_dma()
				 */
				FUNC4(dsd_ptr);
				return 1;
			}

			if (sp) {
				FUNC6(&dsd_ptr->list,
					      &sp->u.scmd.crc_ctx->dsd_list);

				sp->flags |= SRB_CRC_CTX_DSD_VALID;
			} else {
				FUNC6(&dsd_ptr->list,
				    &(tc->ctx->dsd_list));
				*tc->ctx_dsd_alloced = 1;
			}


			/* add new list to cmd iocb or last list */
			FUNC8(dsd_ptr->dsd_list_dma,
					   &cur_dsd->address);
			cur_dsd->length = FUNC2(dsd_list_len);
			cur_dsd = next_dsd;
		}
		FUNC8(sle_dma, &cur_dsd->address);
		cur_dsd->length = FUNC2(sle_dma_len);
		cur_dsd++;
		avail_dsds--;

		if (partial == 0) {
			/* Got a full protection interval */
			sle_dma = FUNC13(sg_prot) + tot_prot_dma_len;
			sle_dma_len = 8;

			tot_prot_dma_len += sle_dma_len;
			if (tot_prot_dma_len == FUNC14(sg_prot)) {
				tot_prot_dma_len = 0;
				sg_prot = FUNC15(sg_prot);
			}

			partial = 1; /* So as to not re-enter this block */
			goto alloc_and_fill;
		}
	}
	/* Null termination */
	cur_dsd->address = 0;
	cur_dsd->length = 0;
	cur_dsd++;
	return 0;
}