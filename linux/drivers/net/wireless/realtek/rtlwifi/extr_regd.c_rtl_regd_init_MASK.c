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
struct wiphy {int dummy; } ;
struct TYPE_4__ {scalar_t__ country_code; scalar_t__* alpha2; } ;
struct TYPE_3__ {scalar_t__ channel_plan; } ;
struct rtl_priv {TYPE_2__ regd; TYPE_1__ efuse; } ;
struct ieee80211_hw {struct wiphy* wiphy; } ;
struct country_code_to_enum_rd {scalar_t__* iso_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_REGD ; 
 scalar_t__ COUNTRY_CODE_MAX ; 
 scalar_t__ COUNTRY_CODE_WORLD_WIDE_13 ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct country_code_to_enum_rd* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct wiphy*,void (*) (struct wiphy*,struct regulatory_request*)) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 

int FUNC5(struct ieee80211_hw *hw,
		  void (*reg_notifier)(struct wiphy *wiphy,
				       struct regulatory_request *request))
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct wiphy *wiphy = hw->wiphy;
	struct country_code_to_enum_rd *country = NULL;

	if (wiphy == NULL || &rtlpriv->regd == NULL)
		return -EINVAL;

	/* init country_code from efuse channel plan */
	rtlpriv->regd.country_code =
		FUNC3(rtlpriv->efuse.channel_plan);

	FUNC0(rtlpriv, COMP_REGD, DBG_DMESG,
		 "rtl: EEPROM regdomain: 0x%0x country code: %d\n",
		 rtlpriv->efuse.channel_plan, rtlpriv->regd.country_code);

	if (rtlpriv->regd.country_code >= COUNTRY_CODE_MAX) {
		FUNC0(rtlpriv, COMP_REGD, DBG_DMESG,
			 "rtl: EEPROM indicates invalid country code, world wide 13 should be used\n");

		rtlpriv->regd.country_code = COUNTRY_CODE_WORLD_WIDE_13;
	}

	country = FUNC1(rtlpriv->regd.country_code);

	if (country) {
		rtlpriv->regd.alpha2[0] = country->iso_name[0];
		rtlpriv->regd.alpha2[1] = country->iso_name[1];
	} else {
		rtlpriv->regd.alpha2[0] = '0';
		rtlpriv->regd.alpha2[1] = '0';
	}

	FUNC0(rtlpriv, COMP_REGD, DBG_TRACE,
		 "rtl: Country alpha2 being used: %c%c\n",
		  rtlpriv->regd.alpha2[0], rtlpriv->regd.alpha2[1]);

	FUNC2(&rtlpriv->regd, wiphy, reg_notifier);

	return 0;
}