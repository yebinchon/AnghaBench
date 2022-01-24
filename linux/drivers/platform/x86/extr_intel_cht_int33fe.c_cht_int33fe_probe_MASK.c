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
struct regulator {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct i2c_board_info {char* dev_name; int irq; int /*<<< orphan*/  type; struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
struct cht_int33fe_data {struct regulator* max17047; struct regulator* fusb302; struct regulator* pi3usb30532; } ;
typedef  int /*<<< orphan*/  board_info ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 unsigned long long EXPECTED_PTYPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 size_t INT33FE_NODE_FUSB302 ; 
 size_t INT33FE_NODE_PI3USB30532 ; 
 scalar_t__ FUNC3 (struct regulator*) ; 
 int FUNC4 (struct regulator*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int FUNC8 (struct cht_int33fe_data*) ; 
 int FUNC9 (struct device*,struct cht_int33fe_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct cht_int33fe_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*,...) ; 
 struct cht_int33fe_data* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC13 (struct device*,int,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * nodes ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct cht_int33fe_data*) ; 
 struct regulator* FUNC17 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct regulator*) ; 
 struct fwnode_handle* FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct i2c_board_info board_info;
	struct cht_int33fe_data *data;
	struct fwnode_handle *fwnode;
	struct regulator *regulator;
	unsigned long long ptyp;
	acpi_status status;
	int fusb302_irq;
	int ret;

	status = FUNC7(FUNC2(dev), "PTYP", NULL, &ptyp);
	if (FUNC1(status)) {
		FUNC11(dev, "Error getting PTYPE\n");
		return -ENODEV;
	}

	/*
	 * The same ACPI HID is used for different configurations check PTYP
	 * to ensure that we are dealing with the expected config.
	 */
	if (ptyp != EXPECTED_PTYPE)
		return -ENODEV;

	/* Check presence of INT34D3 (hardware-rev 3) expected for ptype == 4 */
	if (!FUNC6("INT34D3", "1", 3)) {
		FUNC11(dev, "Error PTYPE == %d, but no INT34D3 device\n",
			EXPECTED_PTYPE);
		return -ENODEV;
	}

	/*
	 * We expect the WC PMIC to be paired with a TI bq24292i charger-IC.
	 * We check for the bq24292i vbus regulator here, this has 2 purposes:
	 * 1) The bq24292i allows charging with up to 12V, setting the fusb302's
	 *    max-snk voltage to 12V with another charger-IC is not good.
	 * 2) For the fusb302 driver to get the bq24292i vbus regulator, the
	 *    regulator-map, which is part of the bq24292i regulator_init_data,
	 *    must be registered before the fusb302 is instantiated, otherwise
	 *    it will end up with a dummy-regulator.
	 * Note "cht_wc_usb_typec_vbus" comes from the regulator_init_data
	 * which is defined in i2c-cht-wc.c from where the bq24292i i2c-client
	 * gets instantiated. We use regulator_get_optional here so that we
	 * don't end up getting a dummy-regulator ourselves.
	 */
	regulator = FUNC17(dev, "cht_wc_usb_typec_vbus");
	if (FUNC3(regulator)) {
		ret = FUNC4(regulator);
		return (ret == -ENODEV) ? -EPROBE_DEFER : ret;
	}
	FUNC18(regulator);

	/* The FUSB302 uses the irq at index 1 and is the only irq user */
	fusb302_irq = FUNC5(FUNC0(dev), 1);
	if (fusb302_irq < 0) {
		if (fusb302_irq != -EPROBE_DEFER)
			FUNC11(dev, "Error getting FUSB302 irq\n");
		return fusb302_irq;
	}

	data = FUNC12(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	ret = FUNC8(data);
	if (ret)
		return ret;

	/* Work around BIOS bug, see comment on cht_int33fe_check_for_max17047 */
	ret = FUNC9(dev, data);
	if (ret)
		goto out_remove_nodes;

	fwnode = FUNC19(&nodes[INT33FE_NODE_FUSB302]);
	if (!fwnode) {
		ret = -ENODEV;
		goto out_unregister_max17047;
	}

	FUNC15(&board_info, 0, sizeof(board_info));
	FUNC20(board_info.type, "typec_fusb302", I2C_NAME_SIZE);
	board_info.dev_name = "fusb302";
	board_info.fwnode = fwnode;
	board_info.irq = fusb302_irq;

	data->fusb302 = FUNC13(dev, 2, &board_info);
	if (FUNC3(data->fusb302)) {
		ret = FUNC4(data->fusb302);
		goto out_unregister_max17047;
	}

	fwnode = FUNC19(&nodes[INT33FE_NODE_PI3USB30532]);
	if (!fwnode) {
		ret = -ENODEV;
		goto out_unregister_fusb302;
	}

	FUNC15(&board_info, 0, sizeof(board_info));
	board_info.dev_name = "pi3usb30532";
	board_info.fwnode = fwnode;
	FUNC20(board_info.type, "pi3usb30532", I2C_NAME_SIZE);

	data->pi3usb30532 = FUNC13(dev, 3, &board_info);
	if (FUNC3(data->pi3usb30532)) {
		ret = FUNC4(data->pi3usb30532);
		goto out_unregister_fusb302;
	}

	FUNC16(pdev, data);

	return 0;

out_unregister_fusb302:
	FUNC14(data->fusb302);

out_unregister_max17047:
	FUNC14(data->max17047);

out_remove_nodes:
	FUNC10(data);

	return ret;
}