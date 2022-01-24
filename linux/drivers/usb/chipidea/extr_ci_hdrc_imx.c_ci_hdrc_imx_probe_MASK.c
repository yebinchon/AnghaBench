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
struct device {struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  num_resources; int /*<<< orphan*/  resource; struct device dev; } ;
struct pinctrl_state {int hsic; } ;
struct of_device_id {struct ci_hdrc_imx_platform_flag* data; } ;
struct device_node {int dummy; } ;
struct ci_hdrc_platform_data {int flags; struct pinctrl_state* usb_phy; int /*<<< orphan*/  notify_event; int /*<<< orphan*/  capoffset; int /*<<< orphan*/  name; } ;
struct ci_hdrc_imx_platform_flag {int flags; } ;
struct ci_hdrc_imx_data {int override_phy_control; int supports_runtime_pm; struct pinctrl_state* ci_pdev; int /*<<< orphan*/  pm_qos_req; struct pinctrl_state* hsic_pad_regulator; struct pinctrl_state* usbmisc_data; struct pinctrl_state* phy; struct pinctrl_state* pinctrl_hsic_active; struct pinctrl_state* pinctrl; struct ci_hdrc_imx_platform_flag const* plat_data; } ;

/* Variables and functions */
 int CI_HDRC_IMX_IS_HSIC ; 
 int CI_HDRC_OVERRIDE_PHY_CONTROL ; 
 int CI_HDRC_PMQOS ; 
 int CI_HDRC_SUPPORTS_RUNTIME_PM ; 
 int /*<<< orphan*/  DEF_CAPOFFSET ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct pinctrl_state*) ; 
 int /*<<< orphan*/  PM_QOS_CPU_DMA_LATENCY ; 
 int FUNC1 (struct pinctrl_state*) ; 
 scalar_t__ USBPHY_INTERFACE_MODE_HSIC ; 
 scalar_t__ USBPHY_INTERFACE_MODE_ULPI ; 
 struct pinctrl_state* FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ci_hdrc_platform_data*) ; 
 int /*<<< orphan*/  ci_hdrc_imx_dt_ids ; 
 int /*<<< orphan*/  ci_hdrc_imx_notify_event ; 
 int /*<<< orphan*/  FUNC3 (struct pinctrl_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int) ; 
 struct ci_hdrc_imx_data* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct pinctrl_state* FUNC8 (struct device*) ; 
 struct pinctrl_state* FUNC9 (struct device*,char*) ; 
 struct pinctrl_state* FUNC10 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int FUNC12 (struct device*) ; 
 int FUNC13 (struct device*) ; 
 int FUNC14 (struct pinctrl_state*) ; 
 int FUNC15 (struct pinctrl_state*) ; 
 scalar_t__ FUNC16 (struct device_node*,char*) ; 
 struct of_device_id* FUNC17 (int /*<<< orphan*/ ,struct device*) ; 
 scalar_t__ FUNC18 (struct device_node*) ; 
 void* FUNC19 (struct pinctrl_state*,char*) ; 
 int FUNC20 (struct pinctrl_state*,struct pinctrl_state*) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct ci_hdrc_imx_data*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct pinctrl_state*) ; 
 int FUNC27 (struct pinctrl_state*) ; 
 int /*<<< orphan*/  FUNC28 (struct pinctrl_state*) ; 
 struct pinctrl_state* FUNC29 (struct device*) ; 

__attribute__((used)) static int FUNC30(struct platform_device *pdev)
{
	struct ci_hdrc_imx_data *data;
	struct ci_hdrc_platform_data pdata = {
		.name		= FUNC5(&pdev->dev),
		.capoffset	= DEF_CAPOFFSET,
		.notify_event	= ci_hdrc_imx_notify_event,
	};
	int ret;
	const struct of_device_id *of_id;
	const struct ci_hdrc_imx_platform_flag *imx_platform_flag;
	struct device_node *np = pdev->dev.of_node;
	struct device *dev = &pdev->dev;
	struct pinctrl_state *pinctrl_hsic_idle;

	of_id = FUNC17(ci_hdrc_imx_dt_ids, dev);
	if (!of_id)
		return -ENODEV;

	imx_platform_flag = of_id->data;

	data = FUNC7(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->plat_data = imx_platform_flag;
	pdata.flags |= imx_platform_flag->flags;
	FUNC21(pdev, data);
	data->usbmisc_data = FUNC29(dev);
	if (FUNC0(data->usbmisc_data))
		return FUNC1(data->usbmisc_data);

	if ((FUNC18(dev->of_node) == USBPHY_INTERFACE_MODE_HSIC)
		&& data->usbmisc_data) {
		pdata.flags |= CI_HDRC_IMX_IS_HSIC;
		data->usbmisc_data->hsic = 1;
		data->pinctrl = FUNC8(dev);
		if (FUNC0(data->pinctrl)) {
			FUNC4(dev, "pinctrl get failed, err=%ld\n",
					FUNC1(data->pinctrl));
			return FUNC1(data->pinctrl);
		}

		pinctrl_hsic_idle = FUNC19(data->pinctrl, "idle");
		if (FUNC0(pinctrl_hsic_idle)) {
			FUNC4(dev,
				"pinctrl_hsic_idle lookup failed, err=%ld\n",
					FUNC1(pinctrl_hsic_idle));
			return FUNC1(pinctrl_hsic_idle);
		}

		ret = FUNC20(data->pinctrl, pinctrl_hsic_idle);
		if (ret) {
			FUNC4(dev, "hsic_idle select failed, err=%d\n", ret);
			return ret;
		}

		data->pinctrl_hsic_active = FUNC19(data->pinctrl,
								"active");
		if (FUNC0(data->pinctrl_hsic_active)) {
			FUNC4(dev,
				"pinctrl_hsic_active lookup failed, err=%ld\n",
					FUNC1(data->pinctrl_hsic_active));
			return FUNC1(data->pinctrl_hsic_active);
		}

		data->hsic_pad_regulator = FUNC9(dev, "hsic");
		if (FUNC1(data->hsic_pad_regulator) == -EPROBE_DEFER) {
			return -EPROBE_DEFER;
		} else if (FUNC1(data->hsic_pad_regulator) == -ENODEV) {
			/* no pad regualator is needed */
			data->hsic_pad_regulator = NULL;
		} else if (FUNC0(data->hsic_pad_regulator)) {
			FUNC4(dev, "Get HSIC pad regulator error: %ld\n",
					FUNC1(data->hsic_pad_regulator));
			return FUNC1(data->hsic_pad_regulator);
		}

		if (data->hsic_pad_regulator) {
			ret = FUNC27(data->hsic_pad_regulator);
			if (ret) {
				FUNC4(dev,
					"Failed to enable HSIC pad regulator\n");
				return ret;
			}
		}
	}

	if (pdata.flags & CI_HDRC_PMQOS)
		FUNC22(&data->pm_qos_req,
			PM_QOS_CPU_DMA_LATENCY, 0);

	ret = FUNC12(dev);
	if (ret)
		goto disable_hsic_regulator;

	ret = FUNC13(dev);
	if (ret)
		goto disable_hsic_regulator;

	data->phy = FUNC10(dev, "fsl,usbphy", 0);
	if (FUNC0(data->phy)) {
		ret = FUNC1(data->phy);
		/* Return -EINVAL if no usbphy is available */
		if (ret == -ENODEV)
			data->phy = NULL;
		else
			goto err_clk;
	}

	pdata.usb_phy = data->phy;

	if ((FUNC16(np, "fsl,imx53-usb") ||
	     FUNC16(np, "fsl,imx51-usb")) && pdata.usb_phy &&
	    FUNC18(np) == USBPHY_INTERFACE_MODE_ULPI) {
		pdata.flags |= CI_HDRC_OVERRIDE_PHY_CONTROL;
		data->override_phy_control = true;
		FUNC28(pdata.usb_phy);
	}

	if (pdata.flags & CI_HDRC_SUPPORTS_RUNTIME_PM)
		data->supports_runtime_pm = true;

	ret = FUNC14(data->usbmisc_data);
	if (ret) {
		FUNC4(dev, "usbmisc init failed, ret=%d\n", ret);
		goto err_clk;
	}

	data->ci_pdev = FUNC2(dev,
				pdev->resource, pdev->num_resources,
				&pdata);
	if (FUNC0(data->ci_pdev)) {
		ret = FUNC1(data->ci_pdev);
		if (ret != -EPROBE_DEFER)
			FUNC4(dev, "ci_hdrc_add_device failed, err=%d\n",
					ret);
		goto err_clk;
	}

	ret = FUNC15(data->usbmisc_data);
	if (ret) {
		FUNC4(dev, "usbmisc post failed, ret=%d\n", ret);
		goto disable_device;
	}

	if (data->supports_runtime_pm) {
		FUNC25(dev);
		FUNC24(dev);
	}

	FUNC6(dev, true);

	return 0;

disable_device:
	FUNC3(data->ci_pdev);
err_clk:
	FUNC11(dev);
disable_hsic_regulator:
	if (data->hsic_pad_regulator)
		/* don't overwrite original ret (cf. EPROBE_DEFER) */
		FUNC26(data->hsic_pad_regulator);
	if (pdata.flags & CI_HDRC_PMQOS)
		FUNC23(&data->pm_qos_req);
	data->ci_pdev = NULL;
	return ret;
}