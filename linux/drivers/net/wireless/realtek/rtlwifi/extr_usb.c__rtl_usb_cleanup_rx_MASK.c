#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  dev; } ;
struct rtl_usb {int /*<<< orphan*/  rx_cleanup_urbs; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  rx_work_tasklet; int /*<<< orphan*/  rx_submitted; } ;
struct TYPE_2__ {int /*<<< orphan*/  rtl_wq; int /*<<< orphan*/  lps_change_work; } ;
struct rtl_priv {TYPE_1__ works; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_usb* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 
 struct urb* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_usb *rtlusb = FUNC4(FUNC5(hw));
	struct urb *urb;

	FUNC11(&rtlusb->rx_submitted);

	FUNC7(&rtlusb->rx_work_tasklet);
	FUNC0(&rtlpriv->works.lps_change_work);

	FUNC2(rtlpriv->works.rtl_wq);
	FUNC1(rtlpriv->works.rtl_wq);

	FUNC6(&rtlusb->rx_queue);

	while ((urb = FUNC10(&rtlusb->rx_cleanup_urbs))) {
		FUNC8(urb->dev, urb->transfer_buffer_length,
				urb->transfer_buffer, urb->transfer_dma);
		FUNC9(urb);
	}
}