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
struct power_supply_config {struct cpcap_charger_ddata* drv_data; int /*<<< orphan*/  of_node; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  set_vbus; } ;
struct cpcap_charger_ddata {int /*<<< orphan*/  detect_work; TYPE_2__* dev; TYPE_1__ comparator; int /*<<< orphan*/  usb; int /*<<< orphan*/  active; int /*<<< orphan*/  vbus_work; int /*<<< orphan*/  irq_list; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cpcap_charger_id_table ; 
 int FUNC5 (struct cpcap_charger_ddata*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpcap_charger_ddata*) ; 
 int /*<<< orphan*/  cpcap_charger_set_vbus ; 
 int /*<<< orphan*/  cpcap_charger_usb_desc ; 
 int /*<<< orphan*/  cpcap_charger_vbus_work ; 
 int /*<<< orphan*/  cpcap_usb_detect ; 
 int FUNC7 (struct platform_device*,struct cpcap_charger_ddata*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 struct cpcap_charger_ddata* FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 struct of_device_id* FUNC13 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct cpcap_charger_ddata*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct cpcap_charger_ddata *ddata;
	const struct of_device_id *of_id;
	struct power_supply_config psy_cfg = {};
	int error;

	of_id = FUNC13(FUNC14(cpcap_charger_id_table),
				&pdev->dev);
	if (!of_id)
		return -EINVAL;

	ddata = FUNC11(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	ddata->dev = &pdev->dev;

	ddata->reg = FUNC9(ddata->dev->parent, NULL);
	if (!ddata->reg)
		return -ENODEV;

	FUNC1(&ddata->irq_list);
	FUNC0(&ddata->detect_work, cpcap_usb_detect);
	FUNC0(&ddata->vbus_work, cpcap_charger_vbus_work);
	FUNC16(pdev, ddata);

	error = FUNC5(ddata);
	if (error)
		return error;

	FUNC4(&ddata->active, 1);

	psy_cfg.of_node = pdev->dev.of_node;
	psy_cfg.drv_data = ddata;

	ddata->usb = FUNC12(ddata->dev,
						&cpcap_charger_usb_desc,
						&psy_cfg);
	if (FUNC2(ddata->usb)) {
		error = FUNC3(ddata->usb);
		FUNC8(ddata->dev, "failed to register USB charger: %i\n",
			error);

		return error;
	}

	error = FUNC7(pdev, ddata);
	if (error)
		return error;

	ddata->comparator.set_vbus = cpcap_charger_set_vbus;
	error = FUNC15(&ddata->comparator);
	if (error == -ENODEV) {
		FUNC10(ddata->dev, "charger needs phy, deferring probe\n");
		return -EPROBE_DEFER;
	}

	FUNC6(ddata);

	FUNC17(&ddata->detect_work, 0);

	return 0;
}