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
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct ci_hdrc_msm {int /*<<< orphan*/  hsic; scalar_t__ base; int /*<<< orphan*/  secondary_phy; } ;
struct ci_hdrc {int /*<<< orphan*/  phy; TYPE_3__* platdata; TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  edev; } ;
struct TYPE_6__ {TYPE_2__ vbus_extcon; } ;
struct TYPE_4__ {struct device* parent; } ;

/* Variables and functions */
#define  CI_HDRC_CONTROLLER_RESET_EVENT 129 
#define  CI_HDRC_CONTROLLER_STOPPED_EVENT 128 
 int /*<<< orphan*/  HSPHY_SESS_VLD_CTRL ; 
 int /*<<< orphan*/  HS_PHY_AHB_MODE ; 
 int /*<<< orphan*/  HS_PHY_DIG_CLAMP_N ; 
 int /*<<< orphan*/  HS_PHY_GENCONFIG ; 
 int /*<<< orphan*/  HS_PHY_GENCONFIG_2 ; 
 scalar_t__ HS_PHY_SEC_CTRL ; 
 int HS_PHY_SESS_VLD_CTRL_EN ; 
 int HS_PHY_TXFIFO_IDLE_FORCE_DIS ; 
 int HS_PHY_ULPI_TX_PKT_EN_CLR_FIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_USBCMD ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct ci_hdrc_msm* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ci_hdrc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct ci_hdrc *ci, unsigned event)
{
	struct device *dev = ci->dev->parent;
	struct ci_hdrc_msm *msm_ci = FUNC2(dev);
	int ret;

	switch (event) {
	case CI_HDRC_CONTROLLER_RESET_EVENT:
		FUNC1(dev, "CI_HDRC_CONTROLLER_RESET_EVENT received\n");

		FUNC3(ci);
		if (msm_ci->secondary_phy) {
			u32 val = FUNC10(msm_ci->base + HS_PHY_SEC_CTRL);
			val |= HS_PHY_DIG_CLAMP_N;
			FUNC11(val, msm_ci->base + HS_PHY_SEC_CTRL);
		}

		ret = FUNC7(ci->phy);
		if (ret)
			return ret;

		ret = FUNC9(ci->phy);
		if (ret) {
			FUNC6(ci->phy);
			return ret;
		}

		/* use AHB transactor, allow posted data writes */
		FUNC5(ci, HS_PHY_AHB_MODE, 0xffffffff, 0x8);

		/* workaround for rx buffer collision issue */
		FUNC5(ci, HS_PHY_GENCONFIG,
				HS_PHY_TXFIFO_IDLE_FORCE_DIS, 0);

		if (!msm_ci->hsic)
			FUNC5(ci, HS_PHY_GENCONFIG_2,
					HS_PHY_ULPI_TX_PKT_EN_CLR_FIX, 0);

		if (!FUNC0(ci->platdata->vbus_extcon.edev)) {
			FUNC5(ci, HS_PHY_GENCONFIG_2,
					HS_PHY_SESS_VLD_CTRL_EN,
					HS_PHY_SESS_VLD_CTRL_EN);
			FUNC4(ci, OP_USBCMD, HSPHY_SESS_VLD_CTRL,
				 HSPHY_SESS_VLD_CTRL);

		}
		break;
	case CI_HDRC_CONTROLLER_STOPPED_EVENT:
		FUNC1(dev, "CI_HDRC_CONTROLLER_STOPPED_EVENT received\n");
		FUNC8(ci->phy);
		FUNC6(ci->phy);
		break;
	default:
		FUNC1(dev, "unknown ci_hdrc event\n");
		break;
	}

	return 0;
}