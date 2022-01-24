#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct fib {int /*<<< orphan*/  event_wait; TYPE_3__* hw_fib_va; } ;
struct aac_dev {int adapter_shutdown; int max_msix; TYPE_4__* pdev; scalar_t__ msi; struct aac_dev* aac_msix; int /*<<< orphan*/ * thread; struct fib* fibs; TYPE_1__* scsi_host_ptr; scalar_t__ aif_thread; int /*<<< orphan*/  ioctl_mutex; } ;
struct TYPE_10__ {int /*<<< orphan*/  irq; } ;
struct TYPE_8__ {int XferState; } ;
struct TYPE_9__ {TYPE_2__ header; } ;
struct TYPE_7__ {int can_queue; } ;

/* Variables and functions */
 int AAC_NUM_MGT_FIB ; 
 int Async ; 
 int NoResponseExpected ; 
 int ResponseExpected ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*) ; 
 scalar_t__ FUNC1 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 

__attribute__((used)) static void FUNC12(struct aac_dev * aac)
{
	int i;

	FUNC7(&aac->ioctl_mutex);
	aac->adapter_shutdown = 1;
	FUNC8(&aac->ioctl_mutex);

	if (aac->aif_thread) {
		int i;
		/* Clear out events first */
		for (i = 0; i < (aac->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB); i++) {
			struct fib *fib = &aac->fibs[i];
			if (!(fib->hw_fib_va->header.XferState & FUNC4(NoResponseExpected | Async)) &&
			    (fib->hw_fib_va->header.XferState & FUNC4(ResponseExpected)))
				FUNC3(&fib->event_wait);
		}
		FUNC6(aac->thread);
		aac->thread = NULL;
	}

	FUNC2(aac);

	FUNC0(aac);

	if (FUNC1(aac)) {
		if (aac->max_msix > 1) {
			for (i = 0; i < aac->max_msix; i++) {
				FUNC5(FUNC11(aac->pdev, i),
					 &(aac->aac_msix[i]));
			}
		} else {
			FUNC5(aac->pdev->irq,
				 &(aac->aac_msix[0]));
		}
	} else {
		FUNC5(aac->pdev->irq, aac);
	}
	if (aac->msi)
		FUNC9(aac->pdev);
	else if (aac->max_msix > 1)
		FUNC10(aac->pdev);
}