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
typedef  scalar_t__ u32 ;
struct wilc_vif {int /*<<< orphan*/  ndev; } ;
struct wid {int /*<<< orphan*/ * val; scalar_t__ size; int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;
struct cfg80211_beacon_data {scalar_t__ tail_len; int /*<<< orphan*/  tail; scalar_t__ head_len; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WID_ADD_BEACON ; 
 int /*<<< orphan*/  WID_BIN ; 
 int /*<<< orphan*/  WILC_SET_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct wilc_vif*,int /*<<< orphan*/ ,struct wid*,int) ; 

int FUNC6(struct wilc_vif *vif, u32 interval, u32 dtim_period,
		    struct cfg80211_beacon_data *params)
{
	struct wid wid;
	int result;
	u8 *cur_byte;

	wid.id = WID_ADD_BEACON;
	wid.type = WID_BIN;
	wid.size = params->head_len + params->tail_len + 16;
	wid.val = FUNC1(wid.size, GFP_KERNEL);
	if (!wid.val)
		return -ENOMEM;

	cur_byte = wid.val;
	FUNC4(interval, cur_byte);
	cur_byte += 4;
	FUNC4(dtim_period, cur_byte);
	cur_byte += 4;
	FUNC4(params->head_len, cur_byte);
	cur_byte += 4;

	if (params->head_len > 0)
		FUNC2(cur_byte, params->head, params->head_len);
	cur_byte += params->head_len;

	FUNC4(params->tail_len, cur_byte);
	cur_byte += 4;

	if (params->tail_len > 0)
		FUNC2(cur_byte, params->tail, params->tail_len);

	result = FUNC5(vif, WILC_SET_CFG, &wid, 1);
	if (result)
		FUNC3(vif->ndev, "Failed to send add beacon\n");

	FUNC0(wid.val);

	return result;
}