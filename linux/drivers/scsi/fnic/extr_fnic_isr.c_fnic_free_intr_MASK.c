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
struct fnic {TYPE_1__* msix; int /*<<< orphan*/  pdev; int /*<<< orphan*/  vdev; } ;
struct TYPE_2__ {struct fnic* devid; int /*<<< orphan*/  requested; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
#define  VNIC_DEV_INTR_MODE_INTX 130 
#define  VNIC_DEV_INTR_MODE_MSI 129 
#define  VNIC_DEV_INTR_MODE_MSIX 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fnic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct fnic *fnic)
{
	int i;

	switch (FUNC3(fnic->vdev)) {
	case VNIC_DEV_INTR_MODE_INTX:
	case VNIC_DEV_INTR_MODE_MSI:
		FUNC1(FUNC2(fnic->pdev, 0), fnic);
		break;

	case VNIC_DEV_INTR_MODE_MSIX:
		for (i = 0; i < FUNC0(fnic->msix); i++)
			if (fnic->msix[i].requested)
				FUNC1(FUNC2(fnic->pdev, i),
					 fnic->msix[i].devid);
		break;

	default:
		break;
	}
}