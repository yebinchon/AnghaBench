#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ lpm; } ;
struct ci_hdrc {TYPE_2__* platdata; TYPE_1__ hw_bank; int /*<<< orphan*/  phy; } ;
struct TYPE_4__ {int flags; int itc_setting; int tx_burst_size; int rx_burst_size; int /*<<< orphan*/  ahb_burst_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHBBRST_MASK ; 
 int CI_HDRC_DISABLE_DEVICE_STREAMING ; 
 int CI_HDRC_DISABLE_HOST_STREAMING ; 
 int CI_HDRC_FORCE_FULLSPEED ; 
 int CI_HDRC_OVERRIDE_AHB_BURST ; 
 int CI_HDRC_OVERRIDE_RX_BURST ; 
 int CI_HDRC_OVERRIDE_TX_BURST ; 
 int CI_HDRC_SET_NON_ZERO_TTHA ; 
 int DEVLC_PFSC ; 
 int /*<<< orphan*/  ID_SBUSCFG ; 
 int /*<<< orphan*/  OP_BURSTSIZE ; 
 int /*<<< orphan*/  OP_DEVLC ; 
 int /*<<< orphan*/  OP_PORTSC ; 
 int /*<<< orphan*/  OP_TTCTRL ; 
 int /*<<< orphan*/  OP_USBCMD ; 
 int /*<<< orphan*/  OP_USBMODE ; 
 int /*<<< orphan*/  PHY_MODE_USB_DEVICE ; 
 int /*<<< orphan*/  PHY_MODE_USB_HOST ; 
 int PORTSC_PFSC ; 
 int RX_BURST_MASK ; 
 int TTCTRL_TTHA ; 
 int TTCTRL_TTHA_MASK ; 
 int TX_BURST_MASK ; 
 int USBMODE_CI_SDIS ; 
 int /*<<< orphan*/  USBMODE_CM ; 
 scalar_t__ USBMODE_CM_DC ; 
 scalar_t__ USBMODE_CM_HC ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ci_hdrc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct ci_hdrc *ci)
{
	bool is_device_mode, is_host_mode;

	is_device_mode = FUNC1(ci, OP_USBMODE, USBMODE_CM) == USBMODE_CM_DC;
	is_host_mode = FUNC1(ci, OP_USBMODE, USBMODE_CM) == USBMODE_CM_HC;

	if (is_device_mode) {
		FUNC5(ci->phy, PHY_MODE_USB_DEVICE);

		if (ci->platdata->flags & CI_HDRC_DISABLE_DEVICE_STREAMING)
			FUNC3(ci, OP_USBMODE, USBMODE_CI_SDIS,
				 USBMODE_CI_SDIS);
	}

	if (is_host_mode) {
		FUNC5(ci->phy, PHY_MODE_USB_HOST);

		if (ci->platdata->flags & CI_HDRC_DISABLE_HOST_STREAMING)
			FUNC3(ci, OP_USBMODE, USBMODE_CI_SDIS,
				 USBMODE_CI_SDIS);
	}

	if (ci->platdata->flags & CI_HDRC_FORCE_FULLSPEED) {
		if (ci->hw_bank.lpm)
			FUNC3(ci, OP_DEVLC, DEVLC_PFSC, DEVLC_PFSC);
		else
			FUNC3(ci, OP_PORTSC, PORTSC_PFSC, PORTSC_PFSC);
	}

	if (ci->platdata->flags & CI_HDRC_SET_NON_ZERO_TTHA)
		FUNC3(ci, OP_TTCTRL, TTCTRL_TTHA_MASK, TTCTRL_TTHA);

	FUNC3(ci, OP_USBCMD, 0xff0000, ci->platdata->itc_setting << 16);

	if (ci->platdata->flags & CI_HDRC_OVERRIDE_AHB_BURST)
		FUNC4(ci, ID_SBUSCFG, AHBBRST_MASK,
			ci->platdata->ahb_burst_config);

	/* override burst size, take effect only when ahb_burst_config is 0 */
	if (!FUNC2(ci, ID_SBUSCFG, AHBBRST_MASK)) {
		if (ci->platdata->flags & CI_HDRC_OVERRIDE_TX_BURST)
			FUNC3(ci, OP_BURSTSIZE, TX_BURST_MASK,
			ci->platdata->tx_burst_size << FUNC0(TX_BURST_MASK));

		if (ci->platdata->flags & CI_HDRC_OVERRIDE_RX_BURST)
			FUNC3(ci, OP_BURSTSIZE, RX_BURST_MASK,
				ci->platdata->rx_burst_size);
	}
}