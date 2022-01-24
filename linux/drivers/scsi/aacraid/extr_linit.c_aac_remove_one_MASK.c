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
struct pci_dev {int dummy; } ;
struct aac_dev {int /*<<< orphan*/  entry; int /*<<< orphan*/  fsa_dev; int /*<<< orphan*/  fibs; int /*<<< orphan*/  queues; int /*<<< orphan*/  comm_phys; int /*<<< orphan*/  comm_addr; int /*<<< orphan*/  comm_size; TYPE_1__* pdev; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_CHARDEV_NEEDS_REINIT ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_dev*) ; 
 int /*<<< orphan*/  aac_cfg_major ; 
 int /*<<< orphan*/  aac_devices ; 
 int /*<<< orphan*/  FUNC3 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC13(struct pci_dev *pdev)
{
	struct Scsi_Host *shost = FUNC9(pdev);
	struct aac_dev *aac = (struct aac_dev *)shost->hostdata;

	FUNC2(aac);
	FUNC11(shost);

	FUNC0(aac);
	FUNC3(aac);
	FUNC4(&aac->pdev->dev, aac->comm_size, aac->comm_addr,
			  aac->comm_phys);
	FUNC5(aac->queues);

	FUNC1(aac, 0);

	FUNC5(aac->fibs);
	FUNC5(aac->fsa_dev);

	FUNC6(&aac->entry);
	FUNC10(shost);
	FUNC8(pdev);
	if (FUNC7(&aac_devices)) {
		FUNC12(aac_cfg_major, "aac");
		aac_cfg_major = AAC_CHARDEV_NEEDS_REINIT;
	}
}