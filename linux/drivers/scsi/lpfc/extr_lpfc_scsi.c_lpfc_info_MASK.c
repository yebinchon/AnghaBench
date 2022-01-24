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
typedef  int /*<<< orphan*/  tmp ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {char* ModelDesc; scalar_t__* Port; TYPE_2__* pcidev; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  lpfcinfobuf ;
struct TYPE_4__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 
 int FUNC4 (char*,char*,int) ; 

const char *
FUNC5(struct Scsi_Host *host)
{
	struct lpfc_vport *vport = (struct lpfc_vport *) host->hostdata;
	struct lpfc_hba   *phba = vport->phba;
	int link_speed = 0;
	static char lpfcinfobuf[384];
	char tmp[384] = {0};

	FUNC2(lpfcinfobuf, 0, sizeof(lpfcinfobuf));
	if (phba && phba->pcidev){
		/* Model Description */
		FUNC3(tmp, sizeof(tmp), phba->ModelDesc);
		if (FUNC4(lpfcinfobuf, tmp, sizeof(lpfcinfobuf)) >=
		    sizeof(lpfcinfobuf))
			goto buffer_done;

		/* PCI Info */
		FUNC3(tmp, sizeof(tmp),
			  " on PCI bus %02x device %02x irq %d",
			  phba->pcidev->bus->number, phba->pcidev->devfn,
			  phba->pcidev->irq);
		if (FUNC4(lpfcinfobuf, tmp, sizeof(lpfcinfobuf)) >=
		    sizeof(lpfcinfobuf))
			goto buffer_done;

		/* Port Number */
		if (phba->Port[0]) {
			FUNC3(tmp, sizeof(tmp), " port %s", phba->Port);
			if (FUNC4(lpfcinfobuf, tmp, sizeof(lpfcinfobuf)) >=
			    sizeof(lpfcinfobuf))
				goto buffer_done;
		}

		/* Link Speed */
		link_speed = FUNC1(phba);
		if (link_speed != 0) {
			FUNC3(tmp, sizeof(tmp),
				  " Logical Link Speed: %d Mbps", link_speed);
			if (FUNC4(lpfcinfobuf, tmp, sizeof(lpfcinfobuf)) >=
			    sizeof(lpfcinfobuf))
				goto buffer_done;
		}

		/* PCI resettable */
		if (!FUNC0(phba)) {
			FUNC3(tmp, sizeof(tmp), " PCI resettable");
			FUNC4(lpfcinfobuf, tmp, sizeof(lpfcinfobuf));
		}
	}

buffer_done:
	return lpfcinfobuf;
}