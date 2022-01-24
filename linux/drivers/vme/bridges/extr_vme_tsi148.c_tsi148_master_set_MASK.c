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
typedef  int u32 ;
struct vme_master_resource {unsigned int number; int /*<<< orphan*/  lock; int /*<<< orphan*/  bus_resource; struct vme_bridge* parent; } ;
struct vme_bridge {int /*<<< orphan*/  parent; struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {scalar_t__ base; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct pci_bus_region {unsigned long long start; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TSI148_LCSR_OFFSET_OTAT ; 
 scalar_t__ TSI148_LCSR_OFFSET_OTEAL ; 
 scalar_t__ TSI148_LCSR_OFFSET_OTEAU ; 
 scalar_t__ TSI148_LCSR_OFFSET_OTOFL ; 
 scalar_t__ TSI148_LCSR_OFFSET_OTOFU ; 
 scalar_t__ TSI148_LCSR_OFFSET_OTSAL ; 
 scalar_t__ TSI148_LCSR_OFFSET_OTSAU ; 
 scalar_t__* TSI148_LCSR_OT ; 
 unsigned int TSI148_LCSR_OTAT_2eSSTM_160 ; 
 unsigned int TSI148_LCSR_OTAT_2eSSTM_267 ; 
 unsigned int TSI148_LCSR_OTAT_2eSSTM_320 ; 
 unsigned int TSI148_LCSR_OTAT_2eSSTM_M ; 
 unsigned int TSI148_LCSR_OTAT_AMODE_A16 ; 
 unsigned int TSI148_LCSR_OTAT_AMODE_A24 ; 
 unsigned int TSI148_LCSR_OTAT_AMODE_A32 ; 
 unsigned int TSI148_LCSR_OTAT_AMODE_A64 ; 
 unsigned int TSI148_LCSR_OTAT_AMODE_CRCSR ; 
 unsigned int TSI148_LCSR_OTAT_AMODE_M ; 
 unsigned int TSI148_LCSR_OTAT_AMODE_USER1 ; 
 unsigned int TSI148_LCSR_OTAT_AMODE_USER2 ; 
 unsigned int TSI148_LCSR_OTAT_AMODE_USER3 ; 
 unsigned int TSI148_LCSR_OTAT_AMODE_USER4 ; 
 unsigned int TSI148_LCSR_OTAT_DBW_16 ; 
 unsigned int TSI148_LCSR_OTAT_DBW_32 ; 
 unsigned int TSI148_LCSR_OTAT_DBW_M ; 
 unsigned int TSI148_LCSR_OTAT_EN ; 
 unsigned int TSI148_LCSR_OTAT_PGM ; 
 unsigned int TSI148_LCSR_OTAT_SUP ; 
 unsigned int TSI148_LCSR_OTAT_TM_2eSST ; 
 unsigned int TSI148_LCSR_OTAT_TM_2eSSTB ; 
 unsigned int TSI148_LCSR_OTAT_TM_2eVME ; 
 unsigned int TSI148_LCSR_OTAT_TM_BLT ; 
 unsigned int TSI148_LCSR_OTAT_TM_M ; 
 unsigned int TSI148_LCSR_OTAT_TM_MBLT ; 
 int VME_2eSST ; 
#define  VME_2eSST160 141 
#define  VME_2eSST267 140 
#define  VME_2eSST320 139 
 int VME_2eSSTB ; 
 int VME_2eVME ; 
#define  VME_A16 138 
#define  VME_A24 137 
#define  VME_A32 136 
#define  VME_A64 135 
 int VME_BLT ; 
#define  VME_CRCSR 134 
#define  VME_D16 133 
#define  VME_D32 132 
 int VME_MBLT ; 
 int VME_PROG ; 
 int VME_SUPER ; 
#define  VME_USER1 131 
#define  VME_USER2 130 
#define  VME_USER3 129 
#define  VME_USER4 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct pci_bus_region*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct vme_master_resource*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (struct vme_master_resource*) ; 

__attribute__((used)) static int FUNC11(struct vme_master_resource *image, int enabled,
	unsigned long long vme_base, unsigned long long size, u32 aspace,
	u32 cycle, u32 dwidth)
{
	int retval = 0;
	unsigned int i;
	unsigned int temp_ctl = 0;
	unsigned int pci_base_low, pci_base_high;
	unsigned int pci_bound_low, pci_bound_high;
	unsigned int vme_offset_low, vme_offset_high;
	unsigned long long pci_bound, vme_offset, pci_base;
	struct vme_bridge *tsi148_bridge;
	struct tsi148_driver *bridge;
	struct pci_bus_region region;
	struct pci_dev *pdev;

	tsi148_bridge = image->parent;

	bridge = tsi148_bridge->driver_priv;

	pdev = FUNC8(tsi148_bridge->parent);

	/* Verify input data */
	if (vme_base & 0xFFFF) {
		FUNC0(tsi148_bridge->parent, "Invalid VME Window "
			"alignment\n");
		retval = -EINVAL;
		goto err_window;
	}

	if ((size == 0) && (enabled != 0)) {
		FUNC0(tsi148_bridge->parent, "Size must be non-zero for "
			"enabled windows\n");
		retval = -EINVAL;
		goto err_window;
	}

	FUNC6(&image->lock);

	/* Let's allocate the resource here rather than further up the stack as
	 * it avoids pushing loads of bus dependent stuff up the stack. If size
	 * is zero, any existing resource will be freed.
	 */
	retval = FUNC9(image, size);
	if (retval) {
		FUNC7(&image->lock);
		FUNC0(tsi148_bridge->parent, "Unable to allocate memory for "
			"resource\n");
		goto err_res;
	}

	if (size == 0) {
		pci_base = 0;
		pci_bound = 0;
		vme_offset = 0;
	} else {
		FUNC4(pdev->bus, &region,
					&image->bus_resource);
		pci_base = region.start;

		/*
		 * Bound address is a valid address for the window, adjust
		 * according to window granularity.
		 */
		pci_bound = pci_base + (size - 0x10000);
		vme_offset = vme_base - pci_base;
	}

	/* Convert 64-bit variables to 2x 32-bit variables */
	FUNC5(pci_base, &pci_base_high, &pci_base_low);
	FUNC5(pci_bound, &pci_bound_high, &pci_bound_low);
	FUNC5(vme_offset, &vme_offset_high, &vme_offset_low);

	if (pci_base_low & 0xFFFF) {
		FUNC7(&image->lock);
		FUNC0(tsi148_bridge->parent, "Invalid PCI base alignment\n");
		retval = -EINVAL;
		goto err_gran;
	}
	if (pci_bound_low & 0xFFFF) {
		FUNC7(&image->lock);
		FUNC0(tsi148_bridge->parent, "Invalid PCI bound alignment\n");
		retval = -EINVAL;
		goto err_gran;
	}
	if (vme_offset_low & 0xFFFF) {
		FUNC7(&image->lock);
		FUNC0(tsi148_bridge->parent, "Invalid VME Offset "
			"alignment\n");
		retval = -EINVAL;
		goto err_gran;
	}

	i = image->number;

	/* Disable while we are mucking around */
	temp_ctl = FUNC2(bridge->base + TSI148_LCSR_OT[i] +
		TSI148_LCSR_OFFSET_OTAT);
	temp_ctl &= ~TSI148_LCSR_OTAT_EN;
	FUNC3(temp_ctl, bridge->base + TSI148_LCSR_OT[i] +
		TSI148_LCSR_OFFSET_OTAT);

	/* Setup 2eSST speeds */
	temp_ctl &= ~TSI148_LCSR_OTAT_2eSSTM_M;
	switch (cycle & (VME_2eSST160 | VME_2eSST267 | VME_2eSST320)) {
	case VME_2eSST160:
		temp_ctl |= TSI148_LCSR_OTAT_2eSSTM_160;
		break;
	case VME_2eSST267:
		temp_ctl |= TSI148_LCSR_OTAT_2eSSTM_267;
		break;
	case VME_2eSST320:
		temp_ctl |= TSI148_LCSR_OTAT_2eSSTM_320;
		break;
	}

	/* Setup cycle types */
	if (cycle & VME_BLT) {
		temp_ctl &= ~TSI148_LCSR_OTAT_TM_M;
		temp_ctl |= TSI148_LCSR_OTAT_TM_BLT;
	}
	if (cycle & VME_MBLT) {
		temp_ctl &= ~TSI148_LCSR_OTAT_TM_M;
		temp_ctl |= TSI148_LCSR_OTAT_TM_MBLT;
	}
	if (cycle & VME_2eVME) {
		temp_ctl &= ~TSI148_LCSR_OTAT_TM_M;
		temp_ctl |= TSI148_LCSR_OTAT_TM_2eVME;
	}
	if (cycle & VME_2eSST) {
		temp_ctl &= ~TSI148_LCSR_OTAT_TM_M;
		temp_ctl |= TSI148_LCSR_OTAT_TM_2eSST;
	}
	if (cycle & VME_2eSSTB) {
		FUNC1(tsi148_bridge->parent, "Currently not setting "
			"Broadcast Select Registers\n");
		temp_ctl &= ~TSI148_LCSR_OTAT_TM_M;
		temp_ctl |= TSI148_LCSR_OTAT_TM_2eSSTB;
	}

	/* Setup data width */
	temp_ctl &= ~TSI148_LCSR_OTAT_DBW_M;
	switch (dwidth) {
	case VME_D16:
		temp_ctl |= TSI148_LCSR_OTAT_DBW_16;
		break;
	case VME_D32:
		temp_ctl |= TSI148_LCSR_OTAT_DBW_32;
		break;
	default:
		FUNC7(&image->lock);
		FUNC0(tsi148_bridge->parent, "Invalid data width\n");
		retval = -EINVAL;
		goto err_dwidth;
	}

	/* Setup address space */
	temp_ctl &= ~TSI148_LCSR_OTAT_AMODE_M;
	switch (aspace) {
	case VME_A16:
		temp_ctl |= TSI148_LCSR_OTAT_AMODE_A16;
		break;
	case VME_A24:
		temp_ctl |= TSI148_LCSR_OTAT_AMODE_A24;
		break;
	case VME_A32:
		temp_ctl |= TSI148_LCSR_OTAT_AMODE_A32;
		break;
	case VME_A64:
		temp_ctl |= TSI148_LCSR_OTAT_AMODE_A64;
		break;
	case VME_CRCSR:
		temp_ctl |= TSI148_LCSR_OTAT_AMODE_CRCSR;
		break;
	case VME_USER1:
		temp_ctl |= TSI148_LCSR_OTAT_AMODE_USER1;
		break;
	case VME_USER2:
		temp_ctl |= TSI148_LCSR_OTAT_AMODE_USER2;
		break;
	case VME_USER3:
		temp_ctl |= TSI148_LCSR_OTAT_AMODE_USER3;
		break;
	case VME_USER4:
		temp_ctl |= TSI148_LCSR_OTAT_AMODE_USER4;
		break;
	default:
		FUNC7(&image->lock);
		FUNC0(tsi148_bridge->parent, "Invalid address space\n");
		retval = -EINVAL;
		goto err_aspace;
		break;
	}

	temp_ctl &= ~(3<<4);
	if (cycle & VME_SUPER)
		temp_ctl |= TSI148_LCSR_OTAT_SUP;
	if (cycle & VME_PROG)
		temp_ctl |= TSI148_LCSR_OTAT_PGM;

	/* Setup mapping */
	FUNC3(pci_base_high, bridge->base + TSI148_LCSR_OT[i] +
		TSI148_LCSR_OFFSET_OTSAU);
	FUNC3(pci_base_low, bridge->base + TSI148_LCSR_OT[i] +
		TSI148_LCSR_OFFSET_OTSAL);
	FUNC3(pci_bound_high, bridge->base + TSI148_LCSR_OT[i] +
		TSI148_LCSR_OFFSET_OTEAU);
	FUNC3(pci_bound_low, bridge->base + TSI148_LCSR_OT[i] +
		TSI148_LCSR_OFFSET_OTEAL);
	FUNC3(vme_offset_high, bridge->base + TSI148_LCSR_OT[i] +
		TSI148_LCSR_OFFSET_OTOFU);
	FUNC3(vme_offset_low, bridge->base + TSI148_LCSR_OT[i] +
		TSI148_LCSR_OFFSET_OTOFL);

	/* Write ctl reg without enable */
	FUNC3(temp_ctl, bridge->base + TSI148_LCSR_OT[i] +
		TSI148_LCSR_OFFSET_OTAT);

	if (enabled)
		temp_ctl |= TSI148_LCSR_OTAT_EN;

	FUNC3(temp_ctl, bridge->base + TSI148_LCSR_OT[i] +
		TSI148_LCSR_OFFSET_OTAT);

	FUNC7(&image->lock);
	return 0;

err_aspace:
err_dwidth:
err_gran:
	FUNC10(image);
err_res:
err_window:
	return retval;

}