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
struct watchdog_device {int /*<<< orphan*/  timeout; int /*<<< orphan*/  bootstatus; } ;
struct sp5100_tco {int tco_reg_layout; int /*<<< orphan*/  tcobase; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EFCH_PM_ACPI_MMIO_ADDR ; 
 int EFCH_PM_ACPI_MMIO_WDT_OFFSET ; 
 int /*<<< orphan*/  EFCH_PM_DECODEEN ; 
 int EFCH_PM_DECODEEN_WDT_TMREN ; 
 int /*<<< orphan*/  EFCH_PM_ISACONTROL ; 
 int EFCH_PM_ISACONTROL_MMIOEN ; 
 int EFCH_PM_WDT_ADDR ; 
 int ENODEV ; 
 int ENOMEM ; 
 int SB800_ACPI_MMIO_DECODE_EN ; 
 int SB800_ACPI_MMIO_SEL ; 
 char* SB800_DEVNAME ; 
 int /*<<< orphan*/  SB800_PM_ACPI_MMIO_EN ; 
 int /*<<< orphan*/  SB800_PM_WATCHDOG_BASE ; 
 int /*<<< orphan*/  SB800_PM_WDT_MMIO_OFFSET ; 
 char* SP5100_DEVNAME ; 
 int /*<<< orphan*/  SP5100_IO_PM_INDEX_REG ; 
 int /*<<< orphan*/  SP5100_PM_IOPORTS_SIZE ; 
 int /*<<< orphan*/  SP5100_PM_WATCHDOG_BASE ; 
 int /*<<< orphan*/  SP5100_SB_RESOURCE_MMIO_BASE ; 
 int SP5100_WDT_ACTION_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SP5100_WDT_DISABLED ; 
 int SP5100_WDT_FIRED ; 
 int /*<<< orphan*/  SP5100_WDT_MEM_MAP_SIZE ; 
 int /*<<< orphan*/  WDIOF_CARDRESET ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int,int /*<<< orphan*/ ,char const*) ; 
#define  efch 130 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
#define  sb800 129 
#define  sp5100 128 
 int /*<<< orphan*/  sp5100_tco_pci ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sp5100_tco*) ; 
 int /*<<< orphan*/  FUNC13 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct watchdog_device*) ; 
 struct sp5100_tco* FUNC15 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct device *dev,
				  struct watchdog_device *wdd)
{
	struct sp5100_tco *tco = FUNC15(wdd);
	const char *dev_name;
	u32 mmio_addr = 0, val;
	int ret;

	/* Request the IO ports used by this driver */
	if (!FUNC9(SP5100_IO_PM_INDEX_REG,
				  SP5100_PM_IOPORTS_SIZE, "sp5100_tco")) {
		FUNC2(dev, "I/O address 0x%04x already in use\n",
			SP5100_IO_PM_INDEX_REG);
		return -EBUSY;
	}

	/*
	 * Determine type of southbridge chipset.
	 */
	switch (tco->tco_reg_layout) {
	case sp5100:
		dev_name = SP5100_DEVNAME;
		mmio_addr = FUNC10(SP5100_PM_WATCHDOG_BASE) &
								0xfffffff8;
		break;
	case sb800:
		dev_name = SB800_DEVNAME;
		mmio_addr = FUNC10(SB800_PM_WATCHDOG_BASE) &
								0xfffffff8;
		break;
	case efch:
		dev_name = SB800_DEVNAME;
		val = FUNC11(EFCH_PM_DECODEEN);
		if (val & EFCH_PM_DECODEEN_WDT_TMREN)
			mmio_addr = EFCH_PM_WDT_ADDR;
		break;
	default:
		return -ENODEV;
	}

	/* Check MMIO address conflict */
	if (!mmio_addr ||
	    !FUNC5(dev, mmio_addr, SP5100_WDT_MEM_MAP_SIZE,
				     dev_name)) {
		if (mmio_addr)
			FUNC1(dev, "MMIO address 0x%08x already in use\n",
				mmio_addr);
		switch (tco->tco_reg_layout) {
		case sp5100:
			/*
			 * Secondly, Find the watchdog timer MMIO address
			 * from SBResource_MMIO register.
			 */
			/* Read SBResource_MMIO from PCI config(PCI_Reg: 9Ch) */
			FUNC6(sp5100_tco_pci,
					      SP5100_SB_RESOURCE_MMIO_BASE,
					      &mmio_addr);
			if ((mmio_addr & (SB800_ACPI_MMIO_DECODE_EN |
					  SB800_ACPI_MMIO_SEL)) !=
						  SB800_ACPI_MMIO_DECODE_EN) {
				ret = -ENODEV;
				goto unreg_region;
			}
			mmio_addr &= ~0xFFF;
			mmio_addr += SB800_PM_WDT_MMIO_OFFSET;
			break;
		case sb800:
			/* Read SBResource_MMIO from AcpiMmioEn(PM_Reg: 24h) */
			mmio_addr =
				FUNC10(SB800_PM_ACPI_MMIO_EN);
			if ((mmio_addr & (SB800_ACPI_MMIO_DECODE_EN |
					  SB800_ACPI_MMIO_SEL)) !=
						  SB800_ACPI_MMIO_DECODE_EN) {
				ret = -ENODEV;
				goto unreg_region;
			}
			mmio_addr &= ~0xFFF;
			mmio_addr += SB800_PM_WDT_MMIO_OFFSET;
			break;
		case efch:
			val = FUNC11(EFCH_PM_ISACONTROL);
			if (!(val & EFCH_PM_ISACONTROL_MMIOEN)) {
				ret = -ENODEV;
				goto unreg_region;
			}
			mmio_addr = EFCH_PM_ACPI_MMIO_ADDR +
				    EFCH_PM_ACPI_MMIO_WDT_OFFSET;
			break;
		}
		FUNC1(dev, "Got 0x%08x from SBResource_MMIO register\n",
			mmio_addr);
		if (!FUNC5(dev, mmio_addr,
					     SP5100_WDT_MEM_MAP_SIZE,
					     dev_name)) {
			FUNC1(dev, "MMIO address 0x%08x already in use\n",
				mmio_addr);
			ret = -EBUSY;
			goto unreg_region;
		}
	}

	tco->tcobase = FUNC4(dev, mmio_addr, SP5100_WDT_MEM_MAP_SIZE);
	if (!tco->tcobase) {
		FUNC2(dev, "failed to get tcobase address\n");
		ret = -ENOMEM;
		goto unreg_region;
	}

	FUNC3(dev, "Using 0x%08x for watchdog MMIO address\n", mmio_addr);

	/* Setup the watchdog timer */
	FUNC12(tco);

	val = FUNC7(FUNC0(tco->tcobase));
	if (val & SP5100_WDT_DISABLED) {
		FUNC2(dev, "Watchdog hardware is disabled\n");
		ret = -ENODEV;
		goto unreg_region;
	}

	/*
	 * Save WatchDogFired status, because WatchDogFired flag is
	 * cleared here.
	 */
	if (val & SP5100_WDT_FIRED)
		wdd->bootstatus = WDIOF_CARDRESET;
	/* Set watchdog action to reset the system */
	val &= ~SP5100_WDT_ACTION_RESET;
	FUNC16(val, FUNC0(tco->tcobase));

	/* Set a reasonable heartbeat before we stop the timer */
	FUNC13(wdd, wdd->timeout);

	/*
	 * Stop the TCO before we change anything so we don't race with
	 * a zeroed timer.
	 */
	FUNC14(wdd);

	FUNC8(SP5100_IO_PM_INDEX_REG, SP5100_PM_IOPORTS_SIZE);

	return 0;

unreg_region:
	FUNC8(SP5100_IO_PM_INDEX_REG, SP5100_PM_IOPORTS_SIZE);
	return ret;
}