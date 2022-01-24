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
struct snic {unsigned int intr_count; unsigned int wq_count; unsigned int cq_count; int /*<<< orphan*/ * req_pool; int /*<<< orphan*/ * intr; int /*<<< orphan*/ * cq; int /*<<< orphan*/ * wq; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 unsigned int SNIC_REQ_MAX_CACHES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snic*) ; 
 int /*<<< orphan*/  snic_free_wq_buf ; 
 int /*<<< orphan*/  FUNC2 (struct snic*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snic*) ; 
 int /*<<< orphan*/  FUNC4 (struct snic*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct snic *snic)
{
	unsigned int i;
	int ret;

	FUNC6(snic->vdev);
	for (i = 0; i < snic->intr_count; i++)
		FUNC8(&snic->intr[i]);

	for (i = 0; i < snic->wq_count; i++) {
		ret = FUNC10(&snic->wq[i]);
		if (ret)
			return ret;
	}

	/* Clean up completed IOs */
	FUNC2(snic, -1);

	FUNC4(snic, -1);

	/* Clean up the IOs that have not completed */
	for (i = 0; i < snic->wq_count; i++)
		FUNC9(&snic->wq[i], snic_free_wq_buf);

	for (i = 0; i < snic->cq_count; i++)
		FUNC5(&snic->cq[i]);

	for (i = 0; i < snic->intr_count; i++)
		FUNC7(&snic->intr[i]);

	/* Cleanup snic specific requests */
	FUNC1(snic);

	/* Cleanup Pending SCSI commands */
	FUNC3(snic);

	for (i = 0; i < SNIC_REQ_MAX_CACHES; i++)
		FUNC0(snic->req_pool[i]);

	return 0;
}