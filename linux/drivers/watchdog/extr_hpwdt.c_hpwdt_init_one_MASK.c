#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct pci_dev {scalar_t__ subsystem_vendor; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {scalar_t__ timeout; int /*<<< orphan*/ * parent; scalar_t__ pretimeout; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HPWDT_MAX_TIMER ; 
 char* HPWDT_VERSION ; 
 scalar_t__ PCI_VENDOR_ID_HP ; 
 scalar_t__ PCI_VENDOR_ID_HP_3PAR ; 
 scalar_t__ PRETIMEOUT_SEC ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  hpwdt_blacklist ; 
 TYPE_1__ hpwdt_dev ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (struct pci_dev*) ; 
 void* hpwdt_nmistat ; 
 void* hpwdt_timer_con ; 
 void* hpwdt_timer_reg ; 
 int ilo5 ; 
 char* kdumptimeout ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 scalar_t__ FUNC8 (struct pci_dev*) ; 
 void* FUNC9 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,void*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 void* pci_mem_addr ; 
 scalar_t__ pretimeout ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  soft_margin ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *dev,
					const struct pci_device_id *ent)
{
	int retval;

	/*
	 * First let's find out if we are on an iLO2+ server. We will
	 * not run on a legacy ASM box.
	 * So we only support the G5 ProLiant servers and higher.
	 */
	if (dev->subsystem_vendor != PCI_VENDOR_ID_HP &&
	    dev->subsystem_vendor != PCI_VENDOR_ID_HP_3PAR) {
		FUNC2(&dev->dev,
			"This server does not have an iLO2+ ASIC.\n");
		return -ENODEV;
	}

	if (FUNC11(hpwdt_blacklist, dev)) {
		FUNC0(&dev->dev, "Not supported on this device\n");
		return -ENODEV;
	}

	if (FUNC8(dev)) {
		FUNC2(&dev->dev,
			"Not possible to enable PCI Device: 0x%x:0x%x.\n",
			ent->vendor, ent->device);
		return -ENODEV;
	}

	pci_mem_addr = FUNC9(dev, 1, 0x80);
	if (!pci_mem_addr) {
		FUNC2(&dev->dev,
			"Unable to detect the iLO2+ server memory.\n");
		retval = -ENOMEM;
		goto error_pci_iomap;
	}
	hpwdt_nmistat	= pci_mem_addr + 0x6e;
	hpwdt_timer_reg = pci_mem_addr + 0x70;
	hpwdt_timer_con = pci_mem_addr + 0x72;

	/* Have the core update running timer until user space is ready */
	if (FUNC4()) {
		FUNC1(&dev->dev, "timer is running\n");
		FUNC12(WDOG_HW_RUNNING, &hpwdt_dev.status);
	}

	/* Initialize NMI Decoding functionality */
	retval = FUNC5(dev);
	if (retval != 0)
		goto error_init_nmi_decoding;

	FUNC16(&hpwdt_dev);
	FUNC15(&hpwdt_dev, nowayout);
	FUNC13(&hpwdt_dev, soft_margin, NULL);

	if (pretimeout && hpwdt_dev.timeout <= PRETIMEOUT_SEC) {
		FUNC2(&dev->dev, "timeout <= pretimeout. Setting pretimeout to zero\n");
		pretimeout = 0;
	}
	hpwdt_dev.pretimeout = pretimeout ? PRETIMEOUT_SEC : 0;
	kdumptimeout = FUNC6(kdumptimeout, HPWDT_MAX_TIMER);

	hpwdt_dev.parent = &dev->dev;
	retval = FUNC14(&hpwdt_dev);
	if (retval < 0)
		goto error_wd_register;

	FUNC1(&dev->dev, "HPE Watchdog Timer Driver: Version: %s\n",
				HPWDT_VERSION);
	FUNC1(&dev->dev, "timeout: %d seconds (nowayout=%d)\n",
				hpwdt_dev.timeout, nowayout);
	FUNC1(&dev->dev, "pretimeout: %s.\n",
				pretimeout ? "on" : "off");
	FUNC1(&dev->dev, "kdumptimeout: %d.\n", kdumptimeout);

	if (dev->subsystem_vendor == PCI_VENDOR_ID_HP_3PAR)
		ilo5 = true;

	return 0;

error_wd_register:
	FUNC3();
error_init_nmi_decoding:
	FUNC10(dev, pci_mem_addr);
error_pci_iomap:
	FUNC7(dev);
	return retval;
}