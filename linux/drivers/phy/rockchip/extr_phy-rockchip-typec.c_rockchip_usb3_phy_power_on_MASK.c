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
typedef  int u32 ;
struct usb3phy_reg {int /*<<< orphan*/  enable_bit; int /*<<< orphan*/  offset; } ;
struct rockchip_usb3phy_port_cfg {struct usb3phy_reg pipe_status; } ;
struct rockchip_typec_phy {int mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  grf_regs; struct rockchip_usb3phy_port_cfg* port_cfgs; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int MODE_DFP_USB ; 
 int MODE_DISCONNECT ; 
 int MODE_UFP_USB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct rockchip_typec_phy* FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct rockchip_typec_phy*,int) ; 
 int FUNC6 (struct rockchip_typec_phy*) ; 
 int /*<<< orphan*/  FUNC7 (struct rockchip_typec_phy*) ; 
 int FUNC8 (struct rockchip_typec_phy*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct phy *phy)
{
	struct rockchip_typec_phy *tcphy = FUNC3(phy);
	const struct rockchip_usb3phy_port_cfg *cfg = tcphy->port_cfgs;
	const struct usb3phy_reg *reg = &cfg->pipe_status;
	int timeout, new_mode, ret = 0;
	u32 val;

	FUNC1(&tcphy->lock);

	new_mode = FUNC6(tcphy);
	if (new_mode < 0) {
		ret = new_mode;
		goto unlock_ret;
	}

	/* DP-only mode; fall back to USB2 */
	if (!(new_mode & (MODE_DFP_USB | MODE_UFP_USB))) {
		FUNC5(tcphy, true);
		goto unlock_ret;
	}

	if (tcphy->mode == new_mode)
		goto unlock_ret;

	if (tcphy->mode == MODE_DISCONNECT) {
		ret = FUNC8(tcphy, new_mode);
		if (ret)
			goto unlock_ret;
	}

	/* wait TCPHY for pipe ready */
	for (timeout = 0; timeout < 100; timeout++) {
		FUNC4(tcphy->grf_regs, reg->offset, &val);
		if (!(val & FUNC0(reg->enable_bit))) {
			tcphy->mode |= new_mode & (MODE_DFP_USB | MODE_UFP_USB);

			/* enable usb3 host */
			FUNC5(tcphy, false);
			goto unlock_ret;
		}
		FUNC9(10, 20);
	}

	if (tcphy->mode == MODE_DISCONNECT)
		FUNC7(tcphy);

	ret = -ETIMEDOUT;

unlock_ret:
	FUNC2(&tcphy->lock);
	return ret;
}