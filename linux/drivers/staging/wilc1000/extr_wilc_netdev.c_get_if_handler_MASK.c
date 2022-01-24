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
typedef  int /*<<< orphan*/  u8 ;
struct wilc {int vif_num; int /*<<< orphan*/  vif_mutex; TYPE_1__** vif; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; struct net_device* ndev; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 scalar_t__ WILC_AP_MODE ; 
 scalar_t__ WILC_STATION_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net_device *FUNC3(struct wilc *wilc, u8 *mac_header)
{
	u8 *bssid, *bssid1;
	int i = 0;
	struct net_device *ndev = NULL;

	bssid = mac_header + 10;
	bssid1 = mac_header + 4;

	FUNC1(&wilc->vif_mutex);
	for (i = 0; i < wilc->vif_num; i++) {
		if (wilc->vif[i]->mode == WILC_STATION_MODE)
			if (FUNC0(bssid,
						       wilc->vif[i]->bssid)) {
				ndev = wilc->vif[i]->ndev;
				goto out;
			}
		if (wilc->vif[i]->mode == WILC_AP_MODE)
			if (FUNC0(bssid1,
						       wilc->vif[i]->bssid)) {
				ndev = wilc->vif[i]->ndev;
				goto out;
			}
	}
out:
	FUNC2(&wilc->vif_mutex);
	return ndev;
}