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
struct wl1251 {int dummy; } ;
struct acx_beacon_filter_ie_table {int num_ie; int /*<<< orphan*/ * table; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_BEACON_FILTER_TABLE ; 
 int /*<<< orphan*/  BEACON_FILTER_IE_ID_CHANNEL_SWITCH_ANN ; 
 int /*<<< orphan*/  BEACON_RULE_PASS_ON_APPEARANCE ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_beacon_filter_ie_table*) ; 
 struct acx_beacon_filter_ie_table* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_beacon_filter_ie_table*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl)
{
	struct acx_beacon_filter_ie_table *ie_table;
	int idx = 0;
	int ret;

	FUNC3(DEBUG_ACX, "acx beacon filter table");

	ie_table = FUNC1(sizeof(*ie_table), GFP_KERNEL);
	if (!ie_table)
		return -ENOMEM;

	/* configure default beacon pass-through rules */
	ie_table->num_ie = 1;
	ie_table->table[idx++] = BEACON_FILTER_IE_ID_CHANNEL_SWITCH_ANN;
	ie_table->table[idx++] = BEACON_RULE_PASS_ON_APPEARANCE;

	ret = FUNC2(wl, ACX_BEACON_FILTER_TABLE,
				   ie_table, sizeof(*ie_table));
	if (ret < 0) {
		FUNC4("failed to set beacon filter table: %d", ret);
		goto out;
	}

out:
	FUNC0(ie_table);
	return ret;
}