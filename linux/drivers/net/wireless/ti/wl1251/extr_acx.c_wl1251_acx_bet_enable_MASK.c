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
typedef  int /*<<< orphan*/  u8 ;
struct wl1251_acx_bet_enable {int enable; int /*<<< orphan*/  max_consecutive; } ;
struct wl1251 {int dummy; } ;
typedef  enum wl1251_acx_bet_mode { ____Placeholder_wl1251_acx_bet_mode } wl1251_acx_bet_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_BET_ENABLE ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl1251_acx_bet_enable*) ; 
 struct wl1251_acx_bet_enable* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct wl1251_acx_bet_enable*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl, enum wl1251_acx_bet_mode mode,
			  u8 max_consecutive)
{
	struct wl1251_acx_bet_enable *acx;
	int ret;

	FUNC3(DEBUG_ACX, "acx bet enable");

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx)
		return -ENOMEM;

	acx->enable = mode;
	acx->max_consecutive = max_consecutive;

	ret = FUNC2(wl, ACX_BET_ENABLE, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC4("wl1251 acx bet enable failed: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}