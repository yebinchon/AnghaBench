#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int timeout; int /*<<< orphan*/  bootstatus; int /*<<< orphan*/ * parent; } ;
struct TYPE_7__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  VIA_WDT_CONF ; 
 unsigned char VIA_WDT_CONF_ENABLE ; 
 unsigned char VIA_WDT_CONF_MMIO ; 
 int VIA_WDT_FIRED ; 
 int /*<<< orphan*/  VIA_WDT_MMIO_BASE ; 
 int /*<<< orphan*/  VIA_WDT_MMIO_LEN ; 
 int /*<<< orphan*/  WDIOF_CARDRESET ; 
 scalar_t__ WDT_HEARTBEAT ; 
 int WDT_TIMEOUT ; 
 int WDT_TIMEOUT_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  iomem_resource ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 scalar_t__ mmio ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int timeout ; 
 int /*<<< orphan*/  timer ; 
 int FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__ wdt_dev ; 
 int /*<<< orphan*/ * wdt_mem ; 
 TYPE_1__ wdt_res ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pdev,
			       const struct pci_device_id *ent)
{
	unsigned char conf;
	int ret = -ENODEV;

	if (FUNC7(pdev)) {
		FUNC1(&pdev->dev, "cannot enable PCI device\n");
		return -ENODEV;
	}

	/*
	 * Allocate a MMIO region which contains watchdog control register
	 * and counter, then configure the watchdog to use this region.
	 * This is possible only if PnP is properly enabled in BIOS.
	 * If not, the watchdog must be configured in BIOS manually.
	 */
	if (FUNC0(&iomem_resource, &wdt_res, VIA_WDT_MMIO_LEN,
			      0xf0000000, 0xffffff00, 0xff, NULL, NULL)) {
		FUNC1(&pdev->dev, "MMIO allocation failed\n");
		goto err_out_disable_device;
	}

	FUNC11(pdev, VIA_WDT_MMIO_BASE, wdt_res.start);
	FUNC8(pdev, VIA_WDT_CONF, &conf);
	conf |= VIA_WDT_CONF_ENABLE | VIA_WDT_CONF_MMIO;
	FUNC10(pdev, VIA_WDT_CONF, conf);

	FUNC9(pdev, VIA_WDT_MMIO_BASE, &mmio);
	if (mmio) {
		FUNC2(&pdev->dev, "VIA Chipset watchdog MMIO: %x\n", mmio);
	} else {
		FUNC1(&pdev->dev, "MMIO setting failed. Check BIOS.\n");
		goto err_out_resource;
	}

	if (!FUNC15(mmio, VIA_WDT_MMIO_LEN, "via_wdt")) {
		FUNC1(&pdev->dev, "MMIO region busy\n");
		goto err_out_resource;
	}

	wdt_mem = FUNC3(mmio, VIA_WDT_MMIO_LEN);
	if (wdt_mem == NULL) {
		FUNC1(&pdev->dev, "cannot remap VIA wdt MMIO registers\n");
		goto err_out_release;
	}

	if (timeout < 1 || timeout > WDT_TIMEOUT_MAX)
		timeout = WDT_TIMEOUT;

	wdt_dev.timeout = timeout;
	wdt_dev.parent = &pdev->dev;
	FUNC17(&wdt_dev, nowayout);
	if (FUNC12(wdt_mem) & VIA_WDT_FIRED)
		wdt_dev.bootstatus |= WDIOF_CARDRESET;

	ret = FUNC16(&wdt_dev);
	if (ret)
		goto err_out_iounmap;

	/* start triggering, in case of watchdog already enabled by BIOS */
	FUNC5(&timer, jiffies + WDT_HEARTBEAT);
	return 0;

err_out_iounmap:
	FUNC4(wdt_mem);
err_out_release:
	FUNC13(mmio, VIA_WDT_MMIO_LEN);
err_out_resource:
	FUNC14(&wdt_res);
err_out_disable_device:
	FUNC6(pdev);
	return ret;
}