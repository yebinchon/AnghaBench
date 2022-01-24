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
struct scsi_qla_host {int /*<<< orphan*/  response_dma; int /*<<< orphan*/  response_ring; TYPE_1__* pdev; int /*<<< orphan*/  request_dma; int /*<<< orphan*/  request_ring; int /*<<< orphan*/  mmpbase; } ;
struct response {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct Scsi_Host {int /*<<< orphan*/  io_port; scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  request_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int REQUEST_ENTRY_CNT ; 
 int RESPONSE_ENTRY_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 

__attribute__((used)) static void
FUNC9(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC4(pdev);
	struct scsi_qla_host *ha = (struct scsi_qla_host *)host->hostdata;

	FUNC8(host);

	FUNC5(ha);

	FUNC1(pdev->irq, ha);

#if MEMORY_MAPPED_IO
	iounmap(ha->mmpbase);
#else
	FUNC6(host->io_port, 0xff);
#endif

	FUNC0(&ha->pdev->dev,
			((REQUEST_ENTRY_CNT + 1) * (sizeof(request_t))),
			ha->request_ring, ha->request_dma);
	FUNC0(&ha->pdev->dev,
			((RESPONSE_ENTRY_CNT + 1) * (sizeof(struct response))),
			ha->response_ring, ha->response_dma);

	FUNC3(pdev);

	FUNC7(host);
}