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
struct pm8001_hba_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {int subsystem_vendor; int device; } ;

/* Variables and functions */
#define  PCI_VENDOR_ID_ADAPTEC2 129 
#define  PCI_VENDOR_ID_ATTO 128 
 int FUNC0 (struct pm8001_hba_info*) ; 
 int FUNC1 (struct pm8001_hba_info*) ; 

__attribute__((used)) static int FUNC2(struct pm8001_hba_info *pm8001_ha)
{
	switch (pm8001_ha->pdev->subsystem_vendor) {
	case PCI_VENDOR_ID_ATTO:
		if (pm8001_ha->pdev->device == 0x0042) /* 6Gb */
			return 0;
		else
			return FUNC1(pm8001_ha);

	case PCI_VENDOR_ID_ADAPTEC2:
	case 0:
		return 0;

	default:
		return FUNC0(pm8001_ha);
	}
}