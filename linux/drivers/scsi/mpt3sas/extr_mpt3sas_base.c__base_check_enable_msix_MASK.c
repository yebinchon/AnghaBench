#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct MPT3SAS_ADAPTER {int msix_vector_count; TYPE_1__* pdev; } ;
struct TYPE_3__ {scalar_t__ device; scalar_t__ revision; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2004 ; 
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2008 ; 
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2108_1 ; 
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2108_2 ; 
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2108_3 ; 
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2116_1 ; 
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2116_2 ; 
 int /*<<< orphan*/  PCI_CAP_ID_MSIX ; 
 scalar_t__ SAS2_PCI_DEVICE_B0_REVISION ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*,char*,...) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int*) ; 

__attribute__((used)) static int
FUNC5(struct MPT3SAS_ADAPTER *ioc)
{
	int base;
	u16 message_control;

	/* Check whether controller SAS2008 B0 controller,
	 * if it is SAS2008 B0 controller use IO-APIC instead of MSIX
	 */
	if (ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2008 &&
	    ioc->pdev->revision == SAS2_PCI_DEVICE_B0_REVISION) {
		return -EINVAL;
	}

	base = FUNC3(ioc->pdev, PCI_CAP_ID_MSIX);
	if (!base) {
		FUNC0(ioc, FUNC2(ioc, "msix not supported\n"));
		return -EINVAL;
	}

	/* get msix vector count */
	/* NUMA_IO not supported for older controllers */
	if (ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2004 ||
	    ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2008 ||
	    ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2108_1 ||
	    ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2108_2 ||
	    ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2108_3 ||
	    ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2116_1 ||
	    ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2116_2)
		ioc->msix_vector_count = 1;
	else {
		FUNC4(ioc->pdev, base + 2, &message_control);
		ioc->msix_vector_count = (message_control & 0x3FF) + 1;
	}
	FUNC1(ioc, FUNC2(ioc, "msix is supported, vector_count(%d)\n",
				  ioc->msix_vector_count));
	return 0;
}