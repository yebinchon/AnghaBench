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
struct wilc_vif {int dummy; } ;
struct wilc_hif_func {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;
struct wilc {int io_type; int /*<<< orphan*/  wiphy; int /*<<< orphan*/  hif_workqueue; TYPE_2__ rxq_head; TYPE_1__ txq_head; int /*<<< orphan*/  chip_ps_state; struct wilc_hif_func const* hif_func; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct wilc_vif*) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int FUNC2 (struct wilc_vif*) ; 
 int /*<<< orphan*/  WILC_CHIP_WAKEDUP ; 
 int /*<<< orphan*/  WILC_STATION_MODE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct wilc* FUNC5 (struct device*) ; 
 struct wilc_vif* FUNC6 (struct wilc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wilc*) ; 
 int FUNC8 (struct wilc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wilc*) ; 

int FUNC12(struct wilc **wilc, struct device *dev, int io_type,
		       const struct wilc_hif_func *ops)
{
	struct wilc *wl;
	struct wilc_vif *vif;
	int ret;

	wl = FUNC5(dev);
	if (!wl)
		return -EINVAL;

	ret = FUNC8(wl);
	if (ret)
		goto free_wl;

	*wilc = wl;
	wl->io_type = io_type;
	wl->hif_func = ops;
	wl->chip_ps_state = WILC_CHIP_WAKEDUP;
	FUNC0(&wl->txq_head.list);
	FUNC0(&wl->rxq_head.list);

	wl->hif_workqueue = FUNC3("WILC_wq");
	if (!wl->hif_workqueue) {
		ret = -ENOMEM;
		goto free_cfg;
	}
	vif = FUNC6(wl, "wlan%d", WILC_STATION_MODE,
				   NL80211_IFTYPE_STATION, false);
	if (FUNC1(vif)) {
		ret = FUNC2(vif);
		goto free_hq;
	}

	FUNC11(wl);

	return 0;

free_hq:
	FUNC4(wl->hif_workqueue);

free_cfg:
	FUNC7(wl);

free_wl:
	FUNC10(wl->wiphy);
	FUNC9(wl->wiphy);
	return ret;
}