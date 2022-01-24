#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {scalar_t__ irq; } ;
typedef  int /*<<< orphan*/  gdth_msg_str ;
struct TYPE_7__ {scalar_t__ ccb_phys; TYPE_1__* pdev; int /*<<< orphan*/  msg_phys; scalar_t__ pmsg; int /*<<< orphan*/  scratch_phys; scalar_t__ pscratch; int /*<<< orphan*/ * sdev; struct Scsi_Host* shost; } ;
typedef  TYPE_2__ gdth_ha_str ;
typedef  int /*<<< orphan*/  gdth_cmd_str ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int GDTH_SCRATCH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC8(gdth_ha_str *ha)
{
	struct Scsi_Host *shp = ha->shost;

	FUNC0(("gdth_remove_one()\n"));

	FUNC7(shp);

	FUNC4(ha);

	if (ha->sdev) {
		FUNC5(ha->sdev);
		ha->sdev = NULL;
	}

	if (shp->irq)
		FUNC3(shp->irq,ha);

	if (ha->pscratch)
		FUNC1(&ha->pdev->dev, GDTH_SCRATCH,
			ha->pscratch, ha->scratch_phys);
	if (ha->pmsg)
		FUNC1(&ha->pdev->dev, sizeof(gdth_msg_str),
			ha->pmsg, ha->msg_phys);
	if (ha->ccb_phys)
		FUNC2(&ha->pdev->dev, ha->ccb_phys,
			sizeof(gdth_cmd_str), DMA_BIDIRECTIONAL);

	FUNC6(shp);
}