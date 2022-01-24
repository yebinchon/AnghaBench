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
struct rtl_usb {int dummy; } ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* hw_init ) (struct ieee80211_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl_usb*) ; 
 int FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_hal* FUNC2 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_usb* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_hal*) ; 
 int FUNC8 (struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC9(struct ieee80211_hw *hw)
{
	int err;
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_hal *rtlhal = FUNC2(FUNC4(hw));
	struct rtl_usb *rtlusb = FUNC5(FUNC6(hw));

	err = rtlpriv->cfg->ops->hw_init(hw);
	if (!err) {
		FUNC3(hw);

		/* Enable software */
		FUNC0(rtlusb);
		/* should after adapter start and interrupt enable. */
		FUNC7(rtlhal);

		/* Start bulk IN */
		err = FUNC1(hw);
	}

	return err;
}