#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct fsl_usb2_platform_data {int invert_drvvbus; int invert_pwr_fault; scalar_t__ controller_ver; scalar_t__ have_sysif_regs; void* check_phy_clk_valid; void* has_fsl_erratum_14; void* has_fsl_erratum_a006918; void* has_fsl_erratum_a005697; void* has_fsl_erratum_a005275; void* has_fsl_erratum_a007792; int /*<<< orphan*/  phy_mode; int /*<<< orphan*/  operating_mode; int /*<<< orphan*/  port_enables; } ;
struct fsl_usb2_dev_data {int /*<<< orphan*/ * drivers; int /*<<< orphan*/  op_mode; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FSL_USB2_MPH_HOST ; 
 int /*<<< orphan*/  FSL_USB2_PORT0_ENABLED ; 
 int /*<<< orphan*/  FSL_USB2_PORT1_ENABLED ; 
 scalar_t__ FSL_USB_VER_NONE ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 struct platform_device* FUNC6 (struct platform_device*,struct fsl_usb2_platform_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  fsl_usb2_mph_dr_of_match ; 
 struct fsl_usb2_dev_data* FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct fsl_usb2_platform_data*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct fsl_usb2_platform_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 scalar_t__ FUNC11 (struct device_node*,char*) ; 
 unsigned char* FUNC12 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC13 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC14 (struct device_node*,char*) ; 
 scalar_t__ FUNC15 (struct device_node*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *ofdev)
{
	struct device_node *np = ofdev->dev.of_node;
	struct platform_device *usb_dev;
	struct fsl_usb2_platform_data data, *pdata;
	struct fsl_usb2_dev_data *dev_data;
	const struct of_device_id *match;
	const unsigned char *prop;
	static unsigned int idx;
	int i;

	if (!FUNC10(np))
		return -ENODEV;

	match = FUNC13(fsl_usb2_mph_dr_of_match, &ofdev->dev);
	if (!match)
		return -ENODEV;

	pdata = &data;
	if (match->data)
		FUNC8(pdata, match->data, sizeof(data));
	else
		FUNC9(pdata, 0, sizeof(data));

	dev_data = FUNC7(np);

	if (FUNC11(np, "fsl-usb2-mph")) {
		if (FUNC12(np, "port0", NULL))
			pdata->port_enables |= FSL_USB2_PORT0_ENABLED;

		if (FUNC12(np, "port1", NULL))
			pdata->port_enables |= FSL_USB2_PORT1_ENABLED;

		pdata->operating_mode = FSL_USB2_MPH_HOST;
	} else {
		if (FUNC12(np, "fsl,invert-drvvbus", NULL))
			pdata->invert_drvvbus = 1;

		if (FUNC12(np, "fsl,invert-pwr-fault", NULL))
			pdata->invert_pwr_fault = 1;

		/* setup mode selected in the device tree */
		pdata->operating_mode = dev_data->op_mode;
	}

	prop = FUNC12(np, "phy_type", NULL);
	pdata->phy_mode = FUNC3(prop);
	pdata->controller_ver = FUNC15(np);

	/* Activate Erratum by reading property in device tree */
	pdata->has_fsl_erratum_a007792 =
		FUNC14(np, "fsl,usb-erratum-a007792");
	pdata->has_fsl_erratum_a005275 =
		FUNC14(np, "fsl,usb-erratum-a005275");
	pdata->has_fsl_erratum_a005697 =
		FUNC14(np, "fsl,usb_erratum-a005697");
	pdata->has_fsl_erratum_a006918 =
		FUNC14(np, "fsl,usb_erratum-a006918");
	pdata->has_fsl_erratum_14 =
		FUNC14(np, "fsl,usb_erratum-14");

	/*
	 * Determine whether phy_clk_valid needs to be checked
	 * by reading property in device tree
	 */
	pdata->check_phy_clk_valid =
		FUNC14(np, "phy-clk-valid");

	if (pdata->have_sysif_regs) {
		if (pdata->controller_ver == FSL_USB_VER_NONE) {
			FUNC5(&ofdev->dev, "Could not get controller version\n");
			return -ENODEV;
		}
	}

	for (i = 0; i < FUNC0(dev_data->drivers); i++) {
		if (!dev_data->drivers[i])
			continue;
		usb_dev = FUNC6(ofdev, pdata,
					dev_data->drivers[i], idx);
		if (FUNC1(usb_dev)) {
			FUNC4(&ofdev->dev, "Can't register usb device\n");
			return FUNC2(usb_dev);
		}
	}
	idx++;
	return 0;
}