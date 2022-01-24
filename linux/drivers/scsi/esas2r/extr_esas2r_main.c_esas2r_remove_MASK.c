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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct esas2r_adapter {int /*<<< orphan*/  index; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESAS2R_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,struct pci_dev*,struct Scsi_Host*) ; 
 int /*<<< orphan*/  found_adapters ; 
 struct Scsi_Host* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC2(pdev);
	struct esas2r_adapter *a = (struct esas2r_adapter *)host->hostdata;

	FUNC1(ESAS2R_LOG_INFO, &(pdev->dev),
		       "esas2r_remove(%p) called; "
		       "host:%p", pdev,
		       host);

	FUNC0(a->index);
	found_adapters--;
}