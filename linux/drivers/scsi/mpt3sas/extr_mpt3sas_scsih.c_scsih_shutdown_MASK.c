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
struct workqueue_struct {int dummy; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_ADAPTER {int remove_host; int /*<<< orphan*/  ioc_pg1_copy; scalar_t__ is_aero_ioc; int /*<<< orphan*/  fw_event_lock; struct workqueue_struct* firmware_event_thread; } ;
typedef  int /*<<< orphan*/  Mpi2ConfigReply_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC3 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC5 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct MPT3SAS_ADAPTER*) ; 
 struct Scsi_Host* FUNC7 (struct pci_dev*) ; 
 struct MPT3SAS_ADAPTER* FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC11(struct pci_dev *pdev)
{
	struct Scsi_Host *shost = FUNC7(pdev);
	struct MPT3SAS_ADAPTER *ioc = FUNC8(shost);
	struct workqueue_struct	*wq;
	unsigned long flags;
	Mpi2ConfigReply_t mpi_reply;

	ioc->remove_host = 1;

	FUNC6(ioc);
	FUNC0(ioc);

	FUNC1(ioc);

	FUNC9(&ioc->fw_event_lock, flags);
	wq = ioc->firmware_event_thread;
	ioc->firmware_event_thread = NULL;
	FUNC10(&ioc->fw_event_lock, flags);
	if (wq)
		FUNC3(wq);
	/*
	 * Copy back the unmodified ioc page1 so that on next driver load,
	 * current modified changes on ioc page1 won't take effect.
	 */
	if (ioc->is_aero_ioc)
		FUNC5(ioc, &mpi_reply,
				&ioc->ioc_pg1_copy);

	FUNC2(ioc);
	FUNC4(ioc);
}