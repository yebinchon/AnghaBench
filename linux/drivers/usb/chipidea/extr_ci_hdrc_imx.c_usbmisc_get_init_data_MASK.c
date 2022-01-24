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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_phandle_args {int /*<<< orphan*/  np; int /*<<< orphan*/ * args; } ;
struct imx_usbmisc_data {int disable_oc; int oc_pol_active_low; int oc_pol_configured; int ulpi; void* evdo; void* pwr_pol; int /*<<< orphan*/ * dev; int /*<<< orphan*/  index; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 struct imx_usbmisc_data* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ USBPHY_INTERFACE_MODE_ULPI ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct imx_usbmisc_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device_node*,char*,char*,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 void* FUNC9 (struct device_node*,char*) ; 
 scalar_t__ FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 

__attribute__((used)) static struct imx_usbmisc_data *FUNC12(struct device *dev)
{
	struct platform_device *misc_pdev;
	struct device_node *np = dev->of_node;
	struct of_phandle_args args;
	struct imx_usbmisc_data *data;
	int ret;

	/*
	 * In case the fsl,usbmisc property is not present this device doesn't
	 * need usbmisc. Return NULL (which is no error here)
	 */
	if (!FUNC6(np, "fsl,usbmisc", NULL))
		return NULL;

	data = FUNC3(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return FUNC0(-ENOMEM);

	ret = FUNC8(np, "fsl,usbmisc", "#index-cells",
					0, &args);
	if (ret) {
		FUNC1(dev, "Failed to parse property fsl,usbmisc, errno %d\n",
			ret);
		return FUNC0(ret);
	}

	data->index = args.args[0];

	misc_pdev = FUNC4(args.np);
	FUNC7(args.np);

	if (!misc_pdev || !FUNC11(misc_pdev))
		return FUNC0(-EPROBE_DEFER);

	data->dev = &misc_pdev->dev;

	/*
	 * Check the various over current related properties. If over current
	 * detection is disabled we're not interested in the polarity.
	 */
	if (FUNC5(np, "disable-over-current", NULL)) {
		data->disable_oc = 1;
	} else if (FUNC5(np, "over-current-active-high", NULL)) {
		data->oc_pol_active_low = 0;
		data->oc_pol_configured = 1;
	} else if (FUNC5(np, "over-current-active-low", NULL)) {
		data->oc_pol_active_low = 1;
		data->oc_pol_configured = 1;
	} else {
		FUNC2(dev, "No over current polarity defined\n");
	}

	data->pwr_pol = FUNC9(np, "power-active-high");
	data->evdo = FUNC9(np, "external-vbus-divider");

	if (FUNC10(np) == USBPHY_INTERFACE_MODE_ULPI)
		data->ulpi = 1;

	return data;
}