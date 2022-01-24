#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct ntb_transport_mw {int use_msi; int mw_count; int msi_spad_offset; int msi_db_mask; unsigned int qp_count; int qp_bitmap; int qp_bitmap_free; int link_is_up; struct ntb_transport_mw* mw_vec; int /*<<< orphan*/  vbase; struct ntb_transport_mw* qp_vec; int /*<<< orphan*/  client_devs; int /*<<< orphan*/  link_cleanup; int /*<<< orphan*/  link_work; int /*<<< orphan*/  debugfs_node_dir; scalar_t__ dma_addr; int /*<<< orphan*/ * virt_addr; scalar_t__ xlat_size; scalar_t__ buff_size; int /*<<< orphan*/  phys_size; int /*<<< orphan*/  phys_addr; struct ntb_dev* ndev; } ;
struct ntb_transport_ctx {int use_msi; int mw_count; int msi_spad_offset; int msi_db_mask; unsigned int qp_count; int qp_bitmap; int qp_bitmap_free; int link_is_up; struct ntb_transport_ctx* mw_vec; int /*<<< orphan*/  vbase; struct ntb_transport_ctx* qp_vec; int /*<<< orphan*/  client_devs; int /*<<< orphan*/  link_cleanup; int /*<<< orphan*/  link_work; int /*<<< orphan*/  debugfs_node_dir; scalar_t__ dma_addr; int /*<<< orphan*/ * virt_addr; scalar_t__ xlat_size; scalar_t__ buff_size; int /*<<< orphan*/  phys_size; int /*<<< orphan*/  phys_addr; struct ntb_dev* ndev; } ;
struct ntb_dev {int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct ntb_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mw_set_trans; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int MW0_SZ_HIGH ; 
 scalar_t__ NTB_DEF_PEER_CNT ; 
 int /*<<< orphan*/  NTB_SPEED_AUTO ; 
 unsigned int NTB_TRANSPORT_MIN_SPADS ; 
 int /*<<< orphan*/  NTB_WIDTH_AUTO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (unsigned int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ntb_transport_mw*) ; 
 struct ntb_transport_mw* FUNC14 (int,int /*<<< orphan*/ ,int) ; 
 unsigned int max_num_clients ; 
 int FUNC15 (unsigned int,unsigned int) ; 
 scalar_t__ nt_debugfs_dir ; 
 int FUNC16 (struct ntb_transport_mw*) ; 
 int /*<<< orphan*/  FUNC17 (struct ntb_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct ntb_dev*,int) ; 
 scalar_t__ FUNC19 (struct ntb_dev*) ; 
 int FUNC20 (struct ntb_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct ntb_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ntb_dev*) ; 
 int FUNC23 (struct ntb_dev*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC24 (struct ntb_dev*) ; 
 int FUNC25 (struct ntb_dev*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (struct ntb_dev*) ; 
 int FUNC27 (struct ntb_dev*,struct ntb_transport_mw*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC28 (struct ntb_dev*) ; 
 scalar_t__ FUNC29 (struct ntb_dev*) ; 
 int FUNC30 (struct ntb_transport_mw*,int) ; 
 int /*<<< orphan*/  ntb_transport_link_cleanup_work ; 
 int /*<<< orphan*/  ntb_transport_link_work ; 
 int /*<<< orphan*/  ntb_transport_msi_desc_changed ; 
 int /*<<< orphan*/  ntb_transport_ops ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 scalar_t__ use_msi ; 

__attribute__((used)) static int FUNC32(struct ntb_client *self, struct ntb_dev *ndev)
{
	struct ntb_transport_ctx *nt;
	struct ntb_transport_mw *mw;
	unsigned int mw_count, qp_count, spad_count, max_mw_count_for_spads;
	u64 qp_bitmap;
	int node;
	int rc, i;

	mw_count = FUNC24(ndev);

	if (!ndev->ops->mw_set_trans) {
		FUNC6(&ndev->dev, "Inbound MW based NTB API is required\n");
		return -EINVAL;
	}

	if (FUNC19(ndev))
		FUNC5(&ndev->dev,
			"doorbell is unsafe, proceed anyway...\n");
	if (FUNC29(ndev))
		FUNC5(&ndev->dev,
			"scratchpad is unsafe, proceed anyway...\n");

	if (FUNC26(ndev) != NTB_DEF_PEER_CNT)
		FUNC8(&ndev->dev, "Multi-port NTB devices unsupported\n");

	node = FUNC7(&ndev->dev);

	nt = FUNC14(sizeof(*nt), GFP_KERNEL, node);
	if (!nt)
		return -ENOMEM;

	nt->ndev = ndev;

	/*
	 * If we are using MSI, and have at least one extra memory window,
	 * we will reserve the last MW for the MSI window.
	 */
	if (use_msi && mw_count > 1) {
		rc = FUNC23(ndev, ntb_transport_msi_desc_changed);
		if (!rc) {
			mw_count -= 1;
			nt->use_msi = true;
		}
	}

	spad_count = FUNC28(ndev);

	/* Limit the MW's based on the availability of scratchpads */

	if (spad_count < NTB_TRANSPORT_MIN_SPADS) {
		nt->mw_count = 0;
		rc = -EINVAL;
		goto err;
	}

	max_mw_count_for_spads = (spad_count - MW0_SZ_HIGH) / 2;
	nt->mw_count = FUNC15(mw_count, max_mw_count_for_spads);

	nt->msi_spad_offset = nt->mw_count * 2 + MW0_SZ_HIGH;

	nt->mw_vec = FUNC12(mw_count, sizeof(*nt->mw_vec),
				  GFP_KERNEL, node);
	if (!nt->mw_vec) {
		rc = -ENOMEM;
		goto err;
	}

	for (i = 0; i < mw_count; i++) {
		mw = &nt->mw_vec[i];

		rc = FUNC25(ndev, i, &mw->phys_addr,
					  &mw->phys_size);
		if (rc)
			goto err1;

		mw->vbase = FUNC10(mw->phys_addr, mw->phys_size);
		if (!mw->vbase) {
			rc = -ENOMEM;
			goto err1;
		}

		mw->buff_size = 0;
		mw->xlat_size = 0;
		mw->virt_addr = NULL;
		mw->dma_addr = 0;
	}

	qp_bitmap = FUNC20(ndev);

	qp_count = FUNC9(qp_bitmap);
	if (nt->use_msi) {
		qp_count -= 1;
		nt->msi_db_mask = 1 << qp_count;
		FUNC18(ndev, nt->msi_db_mask);
	}

	if (max_num_clients && max_num_clients < qp_count)
		qp_count = max_num_clients;
	else if (nt->mw_count < qp_count)
		qp_count = nt->mw_count;

	qp_bitmap &= FUNC0(qp_count) - 1;

	nt->qp_count = qp_count;
	nt->qp_bitmap = qp_bitmap;
	nt->qp_bitmap_free = qp_bitmap;

	nt->qp_vec = FUNC12(qp_count, sizeof(*nt->qp_vec),
				  GFP_KERNEL, node);
	if (!nt->qp_vec) {
		rc = -ENOMEM;
		goto err1;
	}

	if (nt_debugfs_dir) {
		nt->debugfs_node_dir =
			FUNC4(FUNC31(ndev->pdev),
					   nt_debugfs_dir);
	}

	for (i = 0; i < qp_count; i++) {
		rc = FUNC30(nt, i);
		if (rc)
			goto err2;
	}

	FUNC1(&nt->link_work, ntb_transport_link_work);
	FUNC3(&nt->link_cleanup, ntb_transport_link_cleanup_work);

	rc = FUNC27(ndev, nt, &ntb_transport_ops);
	if (rc)
		goto err2;

	FUNC2(&nt->client_devs);
	rc = FUNC16(nt);
	if (rc)
		goto err3;

	nt->link_is_up = false;
	FUNC21(ndev, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
	FUNC22(ndev);

	return 0;

err3:
	FUNC17(ndev);
err2:
	FUNC13(nt->qp_vec);
err1:
	while (i--) {
		mw = &nt->mw_vec[i];
		FUNC11(mw->vbase);
	}
	FUNC13(nt->mw_vec);
err:
	FUNC13(nt);
	return rc;
}