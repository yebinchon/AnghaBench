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
typedef  int u64 ;
struct ntb_transport_qp {int qp_bitmap; int qp_bitmap_free; int qp_count; int mw_count; struct ntb_transport_qp* mw_vec; struct ntb_transport_qp* qp_vec; int /*<<< orphan*/  vbase; int /*<<< orphan*/  debugfs_dir; int /*<<< orphan*/  link_work; int /*<<< orphan*/  link_cleanup; } ;
struct ntb_transport_ctx {int qp_bitmap; int qp_bitmap_free; int qp_count; int mw_count; struct ntb_transport_ctx* mw_vec; struct ntb_transport_ctx* qp_vec; int /*<<< orphan*/  vbase; int /*<<< orphan*/  debugfs_dir; int /*<<< orphan*/  link_work; int /*<<< orphan*/  link_cleanup; } ;
struct ntb_dev {struct ntb_transport_qp* ctx; } ;
struct ntb_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ntb_transport_qp*) ; 
 int /*<<< orphan*/  FUNC6 (struct ntb_transport_qp*) ; 
 int /*<<< orphan*/  FUNC7 (struct ntb_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct ntb_transport_qp*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ntb_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct ntb_transport_qp*) ; 
 int /*<<< orphan*/  FUNC11 (struct ntb_transport_qp*) ; 

__attribute__((used)) static void FUNC12(struct ntb_client *self, struct ntb_dev *ndev)
{
	struct ntb_transport_ctx *nt = ndev->ctx;
	struct ntb_transport_qp *qp;
	u64 qp_bitmap_alloc;
	int i;

	FUNC11(nt);
	FUNC2(&nt->link_cleanup);
	FUNC1(&nt->link_work);

	qp_bitmap_alloc = nt->qp_bitmap & ~nt->qp_bitmap_free;

	/* verify that all the qp's are freed */
	for (i = 0; i < nt->qp_count; i++) {
		qp = &nt->qp_vec[i];
		if (qp_bitmap_alloc & FUNC0(i))
			FUNC10(qp);
		FUNC3(qp->debugfs_dir);
	}

	FUNC9(ndev);
	FUNC7(ndev);

	FUNC6(nt);

	for (i = nt->mw_count; i--; ) {
		FUNC8(nt, i);
		FUNC4(nt->mw_vec[i].vbase);
	}

	FUNC5(nt->qp_vec);
	FUNC5(nt->mw_vec);
	FUNC5(nt);
}