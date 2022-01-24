#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct power_supply_config {int /*<<< orphan*/  attr_grp; struct pcf50633_mbc* drv_data; int /*<<< orphan*/  num_supplicants; int /*<<< orphan*/  supplied_to; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pcf50633_mbc {TYPE_3__* pcf; void* ac; void* usb; void* adapter; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct TYPE_7__ {int /*<<< orphan*/  num_batteries; int /*<<< orphan*/  batteries; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  PCF50633_IRQ_ADPINS ; 
 int /*<<< orphan*/  PCF50633_IRQ_USBINS ; 
 int PCF50633_MBCS1_ADAPTPRES ; 
 int PCF50633_MBCS1_USBPRES ; 
 int /*<<< orphan*/  PCF50633_REG_MBCS1 ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 struct pcf50633_mbc* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mbc_irq_handlers ; 
 int /*<<< orphan*/  pcf50633_mbc_ac_desc ; 
 int /*<<< orphan*/  pcf50633_mbc_adapter_desc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct pcf50633_mbc*) ; 
 int /*<<< orphan*/  pcf50633_mbc_sysfs_groups ; 
 int /*<<< orphan*/  pcf50633_mbc_usb_desc ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,struct pcf50633_mbc*),struct pcf50633_mbc*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct pcf50633_mbc*) ; 
 void* FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct power_supply_config psy_cfg = {};
	struct power_supply_config usb_psy_cfg;
	struct pcf50633_mbc *mbc;
	int i;
	u8 mbcs1;

	mbc = FUNC5(&pdev->dev, sizeof(*mbc), GFP_KERNEL);
	if (!mbc)
		return -ENOMEM;

	FUNC9(pdev, mbc);
	mbc->pcf = FUNC4(pdev->dev.parent);

	/* Set up IRQ handlers */
	for (i = 0; i < FUNC0(mbc_irq_handlers); i++)
		FUNC8(mbc->pcf, mbc_irq_handlers[i],
					pcf50633_mbc_irq_handler, mbc);

	psy_cfg.supplied_to		= mbc->pcf->pdata->batteries;
	psy_cfg.num_supplicants		= mbc->pcf->pdata->num_batteries;
	psy_cfg.drv_data		= mbc;

	/* Create power supplies */
	mbc->adapter = FUNC10(&pdev->dev,
					     &pcf50633_mbc_adapter_desc,
					     &psy_cfg);
	if (FUNC1(mbc->adapter)) {
		FUNC3(mbc->pcf->dev, "failed to register adapter\n");
		return FUNC2(mbc->adapter);
	}

	usb_psy_cfg = psy_cfg;
	usb_psy_cfg.attr_grp = pcf50633_mbc_sysfs_groups;

	mbc->usb = FUNC10(&pdev->dev, &pcf50633_mbc_usb_desc,
					 &usb_psy_cfg);
	if (FUNC1(mbc->usb)) {
		FUNC3(mbc->pcf->dev, "failed to register usb\n");
		FUNC11(mbc->adapter);
		return FUNC2(mbc->usb);
	}

	mbc->ac = FUNC10(&pdev->dev, &pcf50633_mbc_ac_desc,
					&psy_cfg);
	if (FUNC1(mbc->ac)) {
		FUNC3(mbc->pcf->dev, "failed to register ac\n");
		FUNC11(mbc->adapter);
		FUNC11(mbc->usb);
		return FUNC2(mbc->ac);
	}

	mbcs1 = FUNC7(mbc->pcf, PCF50633_REG_MBCS1);
	if (mbcs1 & PCF50633_MBCS1_USBPRES)
		FUNC6(PCF50633_IRQ_USBINS, mbc);
	if (mbcs1 & PCF50633_MBCS1_ADAPTPRES)
		FUNC6(PCF50633_IRQ_ADPINS, mbc);

	return 0;
}