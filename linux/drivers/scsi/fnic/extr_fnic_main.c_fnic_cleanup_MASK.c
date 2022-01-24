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
struct fnic {unsigned int intr_count; unsigned int rq_count; unsigned int raw_wq_count; unsigned int wq_copy_count; unsigned int cq_count; int /*<<< orphan*/ * io_sgl_pool; int /*<<< orphan*/  io_req_pool; int /*<<< orphan*/ * intr; int /*<<< orphan*/ * cq; int /*<<< orphan*/ * wq_copy; int /*<<< orphan*/ * rq; int /*<<< orphan*/ * wq; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 unsigned int FNIC_SGL_NUM_CACHES ; 
 int /*<<< orphan*/  fnic_free_rq_buf ; 
 int /*<<< orphan*/  fnic_free_wq_buf ; 
 int /*<<< orphan*/  FUNC0 (struct fnic*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fnic*,int) ; 
 int /*<<< orphan*/  fnic_wq_copy_cleanup_handler ; 
 int /*<<< orphan*/  FUNC2 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_completions ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct fnic *fnic)
{
	unsigned int i;
	int err;

	FUNC5(fnic->vdev);
	for (i = 0; i < fnic->intr_count; i++)
		FUNC7(&fnic->intr[i]);

	for (i = 0; i < fnic->rq_count; i++) {
		err = FUNC9(&fnic->rq[i]);
		if (err)
			return err;
	}
	for (i = 0; i < fnic->raw_wq_count; i++) {
		err = FUNC13(&fnic->wq[i]);
		if (err)
			return err;
	}
	for (i = 0; i < fnic->wq_copy_count; i++) {
		err = FUNC12(&fnic->wq_copy[i]);
		if (err)
			return err;
	}

	/* Clean up completed IOs and FCS frames */
	FUNC2(fnic, io_completions);
	FUNC1(fnic, -1);
	FUNC0(fnic, -1);

	/* Clean up the IOs and FCS frames that have not completed */
	for (i = 0; i < fnic->raw_wq_count; i++)
		FUNC10(&fnic->wq[i], fnic_free_wq_buf);
	for (i = 0; i < fnic->rq_count; i++)
		FUNC8(&fnic->rq[i], fnic_free_rq_buf);
	for (i = 0; i < fnic->wq_copy_count; i++)
		FUNC11(&fnic->wq_copy[i],
				   fnic_wq_copy_cleanup_handler);

	for (i = 0; i < fnic->cq_count; i++)
		FUNC4(&fnic->cq[i]);
	for (i = 0; i < fnic->intr_count; i++)
		FUNC6(&fnic->intr[i]);

	FUNC3(fnic->io_req_pool);
	for (i = 0; i < FNIC_SGL_NUM_CACHES; i++)
		FUNC3(fnic->io_sgl_pool[i]);

	return 0;
}