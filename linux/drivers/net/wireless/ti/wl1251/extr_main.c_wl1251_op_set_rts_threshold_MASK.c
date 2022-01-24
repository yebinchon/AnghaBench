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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct wl1251 {int /*<<< orphan*/  mutex; } ;
struct ieee80211_hw {struct wl1251* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1251*) ; 
 int FUNC4 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw, u32 value)
{
	struct wl1251 *wl = hw->priv;
	int ret;

	FUNC0(&wl->mutex);

	ret = FUNC4(wl);
	if (ret < 0)
		goto out;

	ret = FUNC2(wl, (u16) value);
	if (ret < 0)
		FUNC5("wl1251_op_set_rts_threshold failed: %d", ret);

	FUNC3(wl);

out:
	FUNC1(&wl->mutex);

	return ret;
}