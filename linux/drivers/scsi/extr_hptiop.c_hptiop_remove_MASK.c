#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct pci_dev {int dummy; } ;
struct hptiop_hba {size_t max_requests; TYPE_3__* pcidev; TYPE_2__* ops; scalar_t__* dma_coherent_handle; scalar_t__* dma_coherent; scalar_t__ req_size; TYPE_1__* host; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* unmap_pci_bar ) (struct hptiop_hba*) ;int /*<<< orphan*/  (* internal_memfree ) (struct hptiop_hba*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hptiop_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 struct Scsi_Host* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC10 (struct hptiop_hba*) ; 
 int /*<<< orphan*/  FUNC11 (struct hptiop_hba*) ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pcidev)
{
	struct Scsi_Host *host = FUNC5(pcidev);
	struct hptiop_hba *hba = (struct hptiop_hba *)host->hostdata;
	u32 i;

	FUNC1("scsi%d: hptiop_remove\n", hba->host->host_no);

	FUNC9(host);

	FUNC3(pcidev);

	FUNC2(hba->pcidev->irq, hba);

	for (i = 0; i < hba->max_requests; i++) {
		if (hba->dma_coherent[i] && hba->dma_coherent_handle[i])
			FUNC0(&hba->pcidev->dev,
					hba->req_size + 0x20,
					hba->dma_coherent[i],
					hba->dma_coherent_handle[i]);
		else
			break;
	}

	hba->ops->internal_memfree(hba);

	hba->ops->unmap_pci_bar(hba);

	FUNC6(hba->pcidev);
	FUNC7(hba->pcidev, NULL);
	FUNC4(hba->pcidev);

	FUNC8(host);
}