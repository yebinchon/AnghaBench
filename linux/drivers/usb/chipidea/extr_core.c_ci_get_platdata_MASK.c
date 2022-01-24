#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pinctrl_state {int dummy; } ;
typedef  struct pinctrl_state extcon_dev ;
struct device {int /*<<< orphan*/  fwnode; int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {void* notifier_call; } ;
struct ci_hdrc_cable {int connected; struct pinctrl_state* edev; TYPE_1__ nb; } ;
struct TYPE_5__ {int otg_rev; int hnp_support; int srp_support; } ;
struct ci_hdrc_platform_data {scalar_t__ dr_mode; int phy_clkgate_delay_us; int itc_setting; int ahb_burst_config; int tx_burst_size; int rx_burst_size; struct pinctrl_state* pins_device; struct pinctrl_state* pctl; struct pinctrl_state* pins_host; struct pinctrl_state* pins_default; struct ci_hdrc_cable id_extcon; struct ci_hdrc_cable vbus_extcon; int /*<<< orphan*/  flags; TYPE_2__ ci_otg_caps; scalar_t__ tpl_support; struct pinctrl_state* reg_vbus; scalar_t__ phy_mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CI_HDRC_FORCE_FULLSPEED ; 
 int /*<<< orphan*/  CI_HDRC_OVERRIDE_AHB_BURST ; 
 int /*<<< orphan*/  CI_HDRC_OVERRIDE_RX_BURST ; 
 int /*<<< orphan*/  CI_HDRC_OVERRIDE_TX_BURST ; 
 int /*<<< orphan*/  CI_HDRC_SET_NON_ZERO_TTHA ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPROBE_DEFER ; 
 struct pinctrl_state* FUNC0 (int) ; 
 int /*<<< orphan*/  EXTCON_USB ; 
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 scalar_t__ FUNC1 (struct pinctrl_state*) ; 
 int FUNC2 (struct pinctrl_state*) ; 
 scalar_t__ USB_DR_MODE_OTG ; 
 scalar_t__ USB_DR_MODE_PERIPHERAL ; 
 scalar_t__ USB_DR_MODE_UNKNOWN ; 
 scalar_t__ USB_SPEED_FULL ; 
 void* ci_cable_notifier ; 
 TYPE_3__ ci_role_switch ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 scalar_t__ FUNC4 (struct device*,char*) ; 
 struct pinctrl_state* FUNC5 (struct device*) ; 
 struct pinctrl_state* FUNC6 (struct device*,char*) ; 
 struct pinctrl_state* FUNC7 (struct device*,int) ; 
 int FUNC8 (struct pinctrl_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct pinctrl_state* FUNC15 (struct pinctrl_state*,char*) ; 
 scalar_t__ FUNC16 (struct device*) ; 
 scalar_t__ FUNC17 (struct device*) ; 

__attribute__((used)) static int FUNC18(struct device *dev,
		struct ci_hdrc_platform_data *platdata)
{
	struct extcon_dev *ext_vbus, *ext_id;
	struct ci_hdrc_cable *cable;
	int ret;

	if (!platdata->phy_mode)
		platdata->phy_mode = FUNC12(dev->of_node);

	if (!platdata->dr_mode)
		platdata->dr_mode = FUNC16(dev);

	if (platdata->dr_mode == USB_DR_MODE_UNKNOWN)
		platdata->dr_mode = USB_DR_MODE_OTG;

	if (platdata->dr_mode != USB_DR_MODE_PERIPHERAL) {
		/* Get the vbus regulator */
		platdata->reg_vbus = FUNC6(dev, "vbus");
		if (FUNC2(platdata->reg_vbus) == -EPROBE_DEFER) {
			return -EPROBE_DEFER;
		} else if (FUNC2(platdata->reg_vbus) == -ENODEV) {
			/* no vbus regulator is needed */
			platdata->reg_vbus = NULL;
		} else if (FUNC1(platdata->reg_vbus)) {
			FUNC3(dev, "Getting regulator error: %ld\n",
				FUNC2(platdata->reg_vbus));
			return FUNC2(platdata->reg_vbus);
		}
		/* Get TPL support */
		if (!platdata->tpl_support)
			platdata->tpl_support =
				FUNC13(dev->of_node);
	}

	if (platdata->dr_mode == USB_DR_MODE_OTG) {
		/* We can support HNP and SRP of OTG 2.0 */
		platdata->ci_otg_caps.otg_rev = 0x0200;
		platdata->ci_otg_caps.hnp_support = true;
		platdata->ci_otg_caps.srp_support = true;

		/* Update otg capabilities by DT properties */
		ret = FUNC14(dev->of_node,
					&platdata->ci_otg_caps);
		if (ret)
			return ret;
	}

	if (FUNC17(dev) == USB_SPEED_FULL)
		platdata->flags |= CI_HDRC_FORCE_FULLSPEED;

	FUNC11(dev->of_node, "phy-clkgate-delay-us",
				     &platdata->phy_clkgate_delay_us);

	platdata->itc_setting = 1;

	FUNC11(dev->of_node, "itc-setting",
					&platdata->itc_setting);

	ret = FUNC11(dev->of_node, "ahb-burst-config",
				&platdata->ahb_burst_config);
	if (!ret) {
		platdata->flags |= CI_HDRC_OVERRIDE_AHB_BURST;
	} else if (ret != -EINVAL) {
		FUNC3(dev, "failed to get ahb-burst-config\n");
		return ret;
	}

	ret = FUNC11(dev->of_node, "tx-burst-size-dword",
				&platdata->tx_burst_size);
	if (!ret) {
		platdata->flags |= CI_HDRC_OVERRIDE_TX_BURST;
	} else if (ret != -EINVAL) {
		FUNC3(dev, "failed to get tx-burst-size-dword\n");
		return ret;
	}

	ret = FUNC11(dev->of_node, "rx-burst-size-dword",
				&platdata->rx_burst_size);
	if (!ret) {
		platdata->flags |= CI_HDRC_OVERRIDE_RX_BURST;
	} else if (ret != -EINVAL) {
		FUNC3(dev, "failed to get rx-burst-size-dword\n");
		return ret;
	}

	if (FUNC9(dev->of_node, "non-zero-ttctrl-ttha", NULL))
		platdata->flags |= CI_HDRC_SET_NON_ZERO_TTHA;

	ext_id = FUNC0(-ENODEV);
	ext_vbus = FUNC0(-ENODEV);
	if (FUNC10(dev->of_node, "extcon")) {
		/* Each one of them is not mandatory */
		ext_vbus = FUNC7(dev, 0);
		if (FUNC1(ext_vbus) && FUNC2(ext_vbus) != -ENODEV)
			return FUNC2(ext_vbus);

		ext_id = FUNC7(dev, 1);
		if (FUNC1(ext_id) && FUNC2(ext_id) != -ENODEV)
			return FUNC2(ext_id);
	}

	cable = &platdata->vbus_extcon;
	cable->nb.notifier_call = ci_cable_notifier;
	cable->edev = ext_vbus;

	if (!FUNC1(ext_vbus)) {
		ret = FUNC8(cable->edev, EXTCON_USB);
		if (ret)
			cable->connected = true;
		else
			cable->connected = false;
	}

	cable = &platdata->id_extcon;
	cable->nb.notifier_call = ci_cable_notifier;
	cable->edev = ext_id;

	if (!FUNC1(ext_id)) {
		ret = FUNC8(cable->edev, EXTCON_USB_HOST);
		if (ret)
			cable->connected = true;
		else
			cable->connected = false;
	}

	if (FUNC4(dev, "usb-role-switch"))
		ci_role_switch.fwnode = dev->fwnode;

	platdata->pctl = FUNC5(dev);
	if (!FUNC1(platdata->pctl)) {
		struct pinctrl_state *p;

		p = FUNC15(platdata->pctl, "default");
		if (!FUNC1(p))
			platdata->pins_default = p;

		p = FUNC15(platdata->pctl, "host");
		if (!FUNC1(p))
			platdata->pins_host = p;

		p = FUNC15(platdata->pctl, "device");
		if (!FUNC1(p))
			platdata->pins_device = p;
	}

	return 0;
}