#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snic {int stop_link_events; int in_remove; int /*<<< orphan*/  shost; int /*<<< orphan*/  vdev; int /*<<< orphan*/  list; int /*<<< orphan*/  snic_lock; } ;
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  snic_list_lock; int /*<<< orphan*/  event_q; } ;
struct TYPE_3__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNIC_OFFLINE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct snic* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct snic*) ; 
 int /*<<< orphan*/  FUNC11 (struct snic*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct snic*) ; 
 int /*<<< orphan*/  FUNC14 (struct snic*) ; 
 int /*<<< orphan*/  FUNC15 (struct snic*) ; 
 TYPE_2__* snic_glob ; 
 int /*<<< orphan*/  FUNC16 (struct snic*) ; 
 int /*<<< orphan*/  FUNC17 (struct snic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct snic*) ; 
 int /*<<< orphan*/  FUNC19 (struct snic*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC25(struct pci_dev *pdev)
{
	struct snic *snic = FUNC6(pdev);
	unsigned long flags;

	if (!snic) {
		FUNC2("sNIC dev: bus %d slot %d fn %d snic inst is null.\n",
			  pdev->bus->number, FUNC1(pdev->devfn),
			  FUNC0(pdev->devfn));

		return;
	}

	/*
	 * Mark state so that the workqueue thread stops forwarding
	 * received frames and link events. ISR and other threads
	 * that can queue work items will also stop creating work
	 * items on the snic workqueue
	 */
	FUNC17(snic, SNIC_OFFLINE);
	FUNC20(&snic->snic_lock, flags);
	snic->stop_link_events = 1;
	FUNC21(&snic->snic_lock, flags);

	FUNC3(snic_glob->event_q);
	FUNC13(snic);

	FUNC20(&snic->snic_lock, flags);
	snic->in_remove = 1;
	FUNC21(&snic->snic_lock, flags);

	/*
	 * This stops the snic device, masks all interrupts, Completed
	 * CQ entries are drained. Posted WQ/RQ/Copy-WQ entries are
	 * cleanup
	 */
	FUNC10(snic);

	FUNC20(&snic_glob->snic_list_lock, flags);
	FUNC4(&snic->list);
	FUNC21(&snic_glob->snic_list_lock, flags);

	FUNC19(snic);
#ifdef CONFIG_SCSI_SNIC_DEBUG_FS
	snic_stats_debugfs_remove(snic);
#endif
	FUNC12(snic->shost);

	FUNC23(snic->vdev);
	FUNC14(snic);
	FUNC15(snic);
	FUNC11(snic);
	FUNC22(snic->vdev);
	FUNC24(snic->vdev);
	FUNC16(snic);
	FUNC7(pdev);
	FUNC5(pdev);
	FUNC8(pdev, NULL);

	/* this frees Scsi_Host and snic memory (continuous chunk) */
	FUNC9(snic->shost);
}