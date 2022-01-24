#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  done; } ;
struct TYPE_9__ {int /*<<< orphan*/  send_flags; scalar_t__ num_sge; TYPE_1__* wr_cqe; int /*<<< orphan*/  opcode; } ;
struct ib_reg_wr {int key; int access; TYPE_4__ wr; TYPE_3__* mr; } ;
struct smbd_mr {int need_invalidate; int sgl_count; int dir; int /*<<< orphan*/  state; int /*<<< orphan*/ * sgl; TYPE_3__* mr; TYPE_1__ cqe; struct ib_reg_wr wr; } ;
struct smbd_connection {int max_frmr_depth; int /*<<< orphan*/  wait_for_mr_cleanup; int /*<<< orphan*/  mr_used_count; TYPE_2__* id; } ;
struct page {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {int rkey; } ;
struct TYPE_7__ {int /*<<< orphan*/  device; int /*<<< orphan*/  qp; } ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ERR ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int /*<<< orphan*/  IB_SEND_SIGNALED ; 
 int /*<<< orphan*/  IB_WR_REG_MR ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  MR_ERROR ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct smbd_mr* FUNC1 (struct smbd_connection*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  register_mr_done ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct page*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct smbd_connection*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct smbd_mr *FUNC13(
	struct smbd_connection *info, struct page *pages[], int num_pages,
	int offset, int tailsz, bool writing, bool need_invalidate)
{
	struct smbd_mr *smbdirect_mr;
	int rc, i;
	enum dma_data_direction dir;
	struct ib_reg_wr *reg_wr;

	if (num_pages > info->max_frmr_depth) {
		FUNC8(ERR, "num_pages=%d max_frmr_depth=%d\n",
			num_pages, info->max_frmr_depth);
		return NULL;
	}

	smbdirect_mr = FUNC1(info);
	if (!smbdirect_mr) {
		FUNC8(ERR, "get_mr returning NULL\n");
		return NULL;
	}
	smbdirect_mr->need_invalidate = need_invalidate;
	smbdirect_mr->sgl_count = num_pages;
	FUNC9(smbdirect_mr->sgl, num_pages);

	FUNC8(INFO, "num_pages=0x%x offset=0x%x tailsz=0x%x\n",
			num_pages, offset, tailsz);

	if (num_pages == 1) {
		FUNC10(&smbdirect_mr->sgl[0], pages[0], tailsz, offset);
		goto skip_multiple_pages;
	}

	/* We have at least two pages to register */
	FUNC10(
		&smbdirect_mr->sgl[0], pages[0], PAGE_SIZE - offset, offset);
	i = 1;
	while (i < num_pages - 1) {
		FUNC10(&smbdirect_mr->sgl[i], pages[i], PAGE_SIZE, 0);
		i++;
	}
	FUNC10(&smbdirect_mr->sgl[i], pages[i],
		tailsz ? tailsz : PAGE_SIZE, 0);

skip_multiple_pages:
	dir = writing ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
	smbdirect_mr->dir = dir;
	rc = FUNC2(info->id->device, smbdirect_mr->sgl, num_pages, dir);
	if (!rc) {
		FUNC8(ERR, "ib_dma_map_sg num_pages=%x dir=%x rc=%x\n",
			num_pages, dir, rc);
		goto dma_map_error;
	}

	rc = FUNC5(smbdirect_mr->mr, smbdirect_mr->sgl, num_pages,
		NULL, PAGE_SIZE);
	if (rc != num_pages) {
		FUNC8(ERR,
			"ib_map_mr_sg failed rc = %d num_pages = %x\n",
			rc, num_pages);
		goto map_mr_error;
	}

	FUNC7(smbdirect_mr->mr,
		FUNC4(smbdirect_mr->mr->rkey));
	reg_wr = &smbdirect_mr->wr;
	reg_wr->wr.opcode = IB_WR_REG_MR;
	smbdirect_mr->cqe.done = register_mr_done;
	reg_wr->wr.wr_cqe = &smbdirect_mr->cqe;
	reg_wr->wr.num_sge = 0;
	reg_wr->wr.send_flags = IB_SEND_SIGNALED;
	reg_wr->mr = smbdirect_mr->mr;
	reg_wr->key = smbdirect_mr->mr->rkey;
	reg_wr->access = writing ?
			IB_ACCESS_REMOTE_WRITE | IB_ACCESS_LOCAL_WRITE :
			IB_ACCESS_REMOTE_READ;

	/*
	 * There is no need for waiting for complemtion on ib_post_send
	 * on IB_WR_REG_MR. Hardware enforces a barrier and order of execution
	 * on the next ib_post_send when we actaully send I/O to remote peer
	 */
	rc = FUNC6(info->id->qp, &reg_wr->wr, NULL);
	if (!rc)
		return smbdirect_mr;

	FUNC8(ERR, "ib_post_send failed rc=%x reg_wr->key=%x\n",
		rc, reg_wr->key);

	/* If all failed, attempt to recover this MR by setting it MR_ERROR*/
map_mr_error:
	FUNC3(info->id->device, smbdirect_mr->sgl,
		smbdirect_mr->sgl_count, smbdirect_mr->dir);

dma_map_error:
	smbdirect_mr->state = MR_ERROR;
	if (FUNC0(&info->mr_used_count))
		FUNC12(&info->wait_for_mr_cleanup);

	FUNC11(info);

	return NULL;
}