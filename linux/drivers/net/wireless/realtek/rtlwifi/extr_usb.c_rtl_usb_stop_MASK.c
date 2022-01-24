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
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  dev; } ;
struct rtl_usb {int /*<<< orphan*/  rx_cleanup_urbs; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  rx_work_tasklet; int /*<<< orphan*/  rx_submitted; } ;
struct TYPE_4__ {int /*<<< orphan*/  rtl_wq; int /*<<< orphan*/  lps_change_work; int /*<<< orphan*/  fill_h2c_cmd; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ works; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* hw_disable ) (struct ieee80211_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl_usb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_usb* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct urb*) ; 
 struct urb* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_hal *rtlhal = FUNC3(FUNC4(hw));
	struct rtl_usb *rtlusb = FUNC5(FUNC6(hw));
	struct urb *urb;

	/* should after adapter start and interrupt enable. */
	FUNC7(rtlhal);
	FUNC1(&rtlpriv->works.fill_h2c_cmd);
	/* Enable software */
	FUNC0(rtlusb);

	/* free pre-allocated URBs from rtl_usb_start() */
	FUNC14(&rtlusb->rx_submitted);

	FUNC10(&rtlusb->rx_work_tasklet);
	FUNC1(&rtlpriv->works.lps_change_work);

	FUNC2(rtlpriv->works.rtl_wq);

	FUNC8(&rtlusb->rx_queue);

	while ((urb = FUNC13(&rtlusb->rx_cleanup_urbs))) {
		FUNC11(urb->dev, urb->transfer_buffer_length,
				urb->transfer_buffer, urb->transfer_dma);
		FUNC12(urb);
	}

	rtlpriv->cfg->ops->hw_disable(hw);
}