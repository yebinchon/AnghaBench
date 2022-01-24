#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct twl4030_bci_platform_data {int /*<<< orphan*/  bb_uamp; int /*<<< orphan*/  bb_uvolt; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* notifier_call ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct twl4030_bci {int ichg_eoc; int ichg_lo; int ichg_hi; int ac_cur; int usb_cur_target; TYPE_4__* transceiver; TYPE_2__ usb_nb; TYPE_4__* ac; TYPE_4__* usb; void* irq_bci; void* irq_chg; TYPE_3__* dev; TYPE_4__* channel_vac; int /*<<< orphan*/  current_worker; int /*<<< orphan*/  work; void* ac_mode; void* usb_mode; } ;
struct TYPE_19__ {TYPE_1__* of_node; struct twl4030_bci_platform_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;
struct TYPE_20__ {int /*<<< orphan*/  last_event; int /*<<< orphan*/  dev; } ;
struct TYPE_17__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 void* CHARGE_AUTO ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*) ; 
 int TWL4030_ACCHGOV ; 
 int TWL4030_BATSTS ; 
 int TWL4030_ICHGEOC ; 
 int TWL4030_ICHGLOW ; 
 int /*<<< orphan*/  TWL4030_INTERRUPTS_BCIIMR1A ; 
 int /*<<< orphan*/  TWL4030_INTERRUPTS_BCIIMR2A ; 
 int /*<<< orphan*/  TWL4030_MODULE_INTERRUPTS ; 
 int TWL4030_TBATOR1 ; 
 int TWL4030_TBATOR2 ; 
 int TWL4030_VBATOV ; 
 int TWL4030_VBUSOV ; 
 scalar_t__ allow_usb ; 
 int /*<<< orphan*/  dev_attr_mode ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC8 (TYPE_3__*,char*) ; 
 struct twl4030_bci* FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_3__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct twl4030_bci*) ; 
 TYPE_4__* FUNC12 (TYPE_3__*,struct device_node*,TYPE_2__*) ; 
 struct device_node* FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*) ; 
 void* FUNC15 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct twl4030_bci*) ; 
 int /*<<< orphan*/  twl4030_bci_ac_desc ; 
 int /*<<< orphan*/  twl4030_bci_interrupt ; 
 struct twl4030_bci_platform_data* FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  twl4030_bci_usb_desc ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  twl4030_bci_usb_work ; 
 int /*<<< orphan*/  FUNC19 (struct twl4030_bci*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct twl4030_bci*,int) ; 
 int /*<<< orphan*/  twl4030_charger_interrupt ; 
 int /*<<< orphan*/  FUNC22 (struct twl4030_bci*) ; 
 int /*<<< orphan*/  twl4030_current_worker ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct twl4030_bci *bci;
	const struct twl4030_bci_platform_data *pdata = pdev->dev.platform_data;
	int ret;
	u32 reg;

	bci = FUNC9(&pdev->dev, sizeof(*bci), GFP_KERNEL);
	if (bci == NULL)
		return -ENOMEM;

	if (!pdata)
		pdata = FUNC17(&pdev->dev);

	bci->ichg_eoc = 80100; /* Stop charging when current drops to here */
	bci->ichg_lo = 241000; /* Low threshold */
	bci->ichg_hi = 500000; /* High threshold */
	bci->ac_cur = 500000; /* 500mA */
	if (allow_usb)
		bci->usb_cur_target = 500000;  /* 500mA */
	else
		bci->usb_cur_target = 100000;  /* 100mA */
	bci->usb_mode = CHARGE_AUTO;
	bci->ac_mode = CHARGE_AUTO;

	bci->dev = &pdev->dev;
	bci->irq_chg = FUNC15(pdev, 0);
	bci->irq_bci = FUNC15(pdev, 1);

	FUNC16(pdev, bci);

	FUNC1(&bci->work, twl4030_bci_usb_work);
	FUNC0(&bci->current_worker, twl4030_current_worker);

	bci->channel_vac = FUNC8(&pdev->dev, "vac");
	if (FUNC2(bci->channel_vac)) {
		ret = FUNC4(bci->channel_vac);
		if (ret == -EPROBE_DEFER)
			return ret;	/* iio not ready */
		FUNC6(&pdev->dev, "could not request vac iio channel (%d)",
			ret);
		bci->channel_vac = NULL;
	}

	if (bci->dev->of_node) {
		struct device_node *phynode;

		phynode = FUNC13(bci->dev->of_node->parent,
						  "ti,twl4030-usb");
		if (phynode) {
			bci->usb_nb.notifier_call = twl4030_bci_usb_ncb;
			bci->transceiver = FUNC12(
				bci->dev, phynode, &bci->usb_nb);
			FUNC14(phynode);
			if (FUNC2(bci->transceiver)) {
				ret = FUNC4(bci->transceiver);
				if (ret == -EPROBE_DEFER)
					return ret;	/* phy not ready */
				FUNC6(&pdev->dev, "could not request transceiver (%d)",
					ret);
				bci->transceiver = NULL;
			}
		}
	}

	bci->ac = FUNC10(&pdev->dev, &twl4030_bci_ac_desc,
					     NULL);
	if (FUNC2(bci->ac)) {
		ret = FUNC4(bci->ac);
		FUNC5(&pdev->dev, "failed to register ac: %d\n", ret);
		return ret;
	}

	bci->usb = FUNC10(&pdev->dev, &twl4030_bci_usb_desc,
					      NULL);
	if (FUNC2(bci->usb)) {
		ret = FUNC4(bci->usb);
		FUNC5(&pdev->dev, "failed to register usb: %d\n", ret);
		return ret;
	}

	ret = FUNC11(&pdev->dev, bci->irq_chg, NULL,
			twl4030_charger_interrupt, IRQF_ONESHOT, pdev->name,
			bci);
	if (ret < 0) {
		FUNC5(&pdev->dev, "could not request irq %d, status %d\n",
			bci->irq_chg, ret);
		return ret;
	}

	ret = FUNC11(&pdev->dev, bci->irq_bci, NULL,
			twl4030_bci_interrupt, IRQF_ONESHOT, pdev->name, bci);
	if (ret < 0) {
		FUNC5(&pdev->dev, "could not request irq %d, status %d\n",
			bci->irq_bci, ret);
		return ret;
	}

	/* Enable interrupts now. */
	reg = ~(u32)(TWL4030_ICHGLOW | TWL4030_ICHGEOC | TWL4030_TBATOR2 |
		TWL4030_TBATOR1 | TWL4030_BATSTS);
	ret = FUNC23(TWL4030_MODULE_INTERRUPTS, reg,
			       TWL4030_INTERRUPTS_BCIIMR1A);
	if (ret < 0) {
		FUNC5(&pdev->dev, "failed to unmask interrupts: %d\n", ret);
		return ret;
	}

	reg = ~(u32)(TWL4030_VBATOV | TWL4030_VBUSOV | TWL4030_ACCHGOV);
	ret = FUNC23(TWL4030_MODULE_INTERRUPTS, reg,
			       TWL4030_INTERRUPTS_BCIIMR2A);
	if (ret < 0)
		FUNC6(&pdev->dev, "failed to unmask interrupts: %d\n", ret);

	FUNC22(bci);
	if (FUNC7(&bci->usb->dev, &dev_attr_mode))
		FUNC6(&pdev->dev, "could not create sysfs file\n");
	if (FUNC7(&bci->ac->dev, &dev_attr_mode))
		FUNC6(&pdev->dev, "could not create sysfs file\n");

	FUNC19(bci, true);
	if (!FUNC3(bci->transceiver))
		FUNC18(&bci->usb_nb,
				    bci->transceiver->last_event,
				    NULL);
	else
		FUNC21(bci, false);
	if (pdata)
		FUNC20(pdata->bb_uvolt,
					      pdata->bb_uamp);
	else
		FUNC20(0, 0);

	return 0;
}