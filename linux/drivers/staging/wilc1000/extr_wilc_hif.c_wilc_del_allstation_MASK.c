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
typedef  int u8 ;
struct wilc_vif {int /*<<< orphan*/  ndev; } ;
struct wilc_del_all_sta {int assoc_sta; int /*<<< orphan*/ * mac; } ;
struct wid {int size; int* val; int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  del_sta ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  WID_DEL_ALL_STA ; 
 int /*<<< orphan*/  WID_STR ; 
 int WILC_MAX_NUM_STA ; 
 int /*<<< orphan*/  WILC_SET_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (struct wilc_del_all_sta*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct wilc_vif*,int /*<<< orphan*/ ,struct wid*,int) ; 

int FUNC5(struct wilc_vif *vif, u8 mac_addr[][ETH_ALEN])
{
	struct wid wid;
	int result;
	int i;
	u8 assoc_sta = 0;
	struct wilc_del_all_sta del_sta;

	FUNC2(&del_sta, 0x0, sizeof(del_sta));
	for (i = 0; i < WILC_MAX_NUM_STA; i++) {
		if (!FUNC1(mac_addr[i])) {
			assoc_sta++;
			FUNC0(del_sta.mac[i], mac_addr[i]);
		}
	}

	if (!assoc_sta)
		return 0;

	del_sta.assoc_sta = assoc_sta;

	wid.id = WID_DEL_ALL_STA;
	wid.type = WID_STR;
	wid.size = (assoc_sta * ETH_ALEN) + 1;
	wid.val = (u8 *)&del_sta;

	result = FUNC4(vif, WILC_SET_CFG, &wid, 1);
	if (result)
		FUNC3(vif->ndev, "Failed to send delete all station\n");

	return result;
}