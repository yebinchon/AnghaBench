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
typedef  size_t u32 ;
struct TYPE_4__ {size_t* ep_mapping; } ;
struct rtl_usb {int /*<<< orphan*/ * tx_pending; int /*<<< orphan*/ * tx_skb_queue; int /*<<< orphan*/  tx_submitted; int /*<<< orphan*/ * usb_tx_aggregate_hdl; int /*<<< orphan*/  usb_tx_cleanup; int /*<<< orphan*/  usb_tx_post_hdl; TYPE_1__ ep_map; int /*<<< orphan*/  max_bulk_out_size; int /*<<< orphan*/  udev; } ;
struct rtl_priv {TYPE_3__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* usb_interface_cfg; } ;
struct TYPE_5__ {int /*<<< orphan*/ * usb_tx_aggregate_hdl; int /*<<< orphan*/  usb_tx_cleanup; int /*<<< orphan*/  usb_tx_post_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t RTL_USB_MAX_EP_NUM ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  USB_FULL_SPEED_BULK_SIZE ; 
 int /*<<< orphan*/  USB_HIGH_SPEED_BULK_SIZE ; 
 size_t __RTL_TXQ_NUM ; 
 int /*<<< orphan*/  _none_usb_tx_aggregate_hdl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_usb* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw)
{
	u32 i;
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_usb *rtlusb = FUNC4(FUNC5(hw));

	rtlusb->max_bulk_out_size = FUNC0(rtlusb->udev)
						    ? USB_HIGH_SPEED_BULK_SIZE
						    : USB_FULL_SPEED_BULK_SIZE;

	FUNC1(rtlpriv, COMP_INIT, DBG_DMESG, "USB Max Bulk-out Size=%d\n",
		 rtlusb->max_bulk_out_size);

	for (i = 0; i < __RTL_TXQ_NUM; i++) {
		u32 ep_num = rtlusb->ep_map.ep_mapping[i];

		if (!ep_num) {
			FUNC1(rtlpriv, COMP_INIT, DBG_DMESG,
				 "Invalid endpoint map setting!\n");
			return -EINVAL;
		}
	}

	rtlusb->usb_tx_post_hdl =
		 rtlpriv->cfg->usb_interface_cfg->usb_tx_post_hdl;
	rtlusb->usb_tx_cleanup	=
		 rtlpriv->cfg->usb_interface_cfg->usb_tx_cleanup;
	rtlusb->usb_tx_aggregate_hdl =
		 (rtlpriv->cfg->usb_interface_cfg->usb_tx_aggregate_hdl)
		 ? rtlpriv->cfg->usb_interface_cfg->usb_tx_aggregate_hdl
		 : &_none_usb_tx_aggregate_hdl;

	FUNC2(&rtlusb->tx_submitted);
	for (i = 0; i < RTL_USB_MAX_EP_NUM; i++) {
		FUNC6(&rtlusb->tx_skb_queue[i]);
		FUNC2(&rtlusb->tx_pending[i]);
	}
	return 0;
}