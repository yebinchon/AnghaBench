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
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 

int  FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_hal *rtlhal = FUNC5(FUNC6(hw));
	int error = 0;

	if (FUNC4(FUNC0(rtlhal->version)))
		error = FUNC2(hw);
	else
		error = FUNC3(hw);
	if (error)
		goto err_out;
	error = FUNC1(hw);
	if (error)
		goto err_out;
err_out:
	return error;
}