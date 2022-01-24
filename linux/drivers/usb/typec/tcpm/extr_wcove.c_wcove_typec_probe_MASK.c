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
struct TYPE_8__ {int /*<<< orphan*/  fwnode; int /*<<< orphan*/  pd_transmit; int /*<<< orphan*/  set_roles; int /*<<< orphan*/  set_pd_rx; int /*<<< orphan*/  start_toggling; int /*<<< orphan*/  set_current_limit; int /*<<< orphan*/  set_vconn; int /*<<< orphan*/  set_polarity; int /*<<< orphan*/  get_cc; int /*<<< orphan*/  set_cc; int /*<<< orphan*/  set_vbus; int /*<<< orphan*/  get_vbus; int /*<<< orphan*/  init; } ;
struct wcove_typec {TYPE_2__ tcpc; int /*<<< orphan*/  tcpm; TYPE_1__* dev; int /*<<< orphan*/  guid; int /*<<< orphan*/  regmap; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct intel_soc_pmic {int /*<<< orphan*/  irq_chip_data_chgr; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WCOVE_DSM_UUID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct intel_soc_pmic* FUNC5 (int /*<<< orphan*/ ) ; 
 struct wcove_typec* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct wcove_typec*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct wcove_typec*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wcove_get_cc ; 
 int /*<<< orphan*/  wcove_get_vbus ; 
 int /*<<< orphan*/  wcove_init ; 
 int /*<<< orphan*/  wcove_pd_transmit ; 
 int /*<<< orphan*/  wcove_props ; 
 int /*<<< orphan*/  wcove_set_cc ; 
 int /*<<< orphan*/  wcove_set_current_limit ; 
 int /*<<< orphan*/  wcove_set_pd_rx ; 
 int /*<<< orphan*/  wcove_set_polarity ; 
 int /*<<< orphan*/  wcove_set_roles ; 
 int /*<<< orphan*/  wcove_set_vbus ; 
 int /*<<< orphan*/  wcove_set_vconn ; 
 int /*<<< orphan*/  wcove_start_toggling ; 
 int /*<<< orphan*/  wcove_typec_irq ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct intel_soc_pmic *pmic = FUNC5(pdev->dev.parent);
	struct wcove_typec *wcove;
	int irq;
	int ret;

	wcove = FUNC6(&pdev->dev, sizeof(*wcove), GFP_KERNEL);
	if (!wcove)
		return -ENOMEM;

	FUNC11(&wcove->lock);
	wcove->dev = &pdev->dev;
	wcove->regmap = pmic->regmap;

	irq = FUNC12(pdev, 0);
	if (irq < 0)
		return irq;

	irq = FUNC14(pmic->irq_chip_data_chgr, irq);
	if (irq < 0)
		return irq;

	ret = FUNC10(WCOVE_DSM_UUID, &wcove->guid);
	if (ret)
		return ret;

	if (!FUNC3(FUNC0(&pdev->dev), &wcove->guid, 0, 0x1f)) {
		FUNC4(&pdev->dev, "Missing _DSM functions\n");
		return -ENODEV;
	}

	wcove->tcpc.init = wcove_init;
	wcove->tcpc.get_vbus = wcove_get_vbus;
	wcove->tcpc.set_vbus = wcove_set_vbus;
	wcove->tcpc.set_cc = wcove_set_cc;
	wcove->tcpc.get_cc = wcove_get_cc;
	wcove->tcpc.set_polarity = wcove_set_polarity;
	wcove->tcpc.set_vconn = wcove_set_vconn;
	wcove->tcpc.set_current_limit = wcove_set_current_limit;
	wcove->tcpc.start_toggling = wcove_start_toggling;

	wcove->tcpc.set_pd_rx = wcove_set_pd_rx;
	wcove->tcpc.set_roles = wcove_set_roles;
	wcove->tcpc.pd_transmit = wcove_pd_transmit;

	wcove->tcpc.fwnode = FUNC8(wcove_props, NULL);
	if (FUNC1(wcove->tcpc.fwnode))
		return FUNC2(wcove->tcpc.fwnode);

	wcove->tcpm = FUNC15(wcove->dev, &wcove->tcpc);
	if (FUNC1(wcove->tcpm)) {
		FUNC9(wcove->tcpc.fwnode);
		return FUNC2(wcove->tcpm);
	}

	ret = FUNC7(&pdev->dev, irq, NULL,
					wcove_typec_irq, IRQF_ONESHOT,
					"wcove_typec", wcove);
	if (ret) {
		FUNC16(wcove->tcpm);
		FUNC9(wcove->tcpc.fwnode);
		return ret;
	}

	FUNC13(pdev, wcove);
	return 0;
}