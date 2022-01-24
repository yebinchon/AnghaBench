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
struct wiphy {int dummy; } ;
struct wilc_vif {int /*<<< orphan*/  ndev; } ;
struct wilc {int /*<<< orphan*/  vif_mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wilc_vif*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct wilc_vif* FUNC4 (struct wilc*) ; 
 struct wilc* FUNC5 (struct wiphy*) ; 

__attribute__((used)) static void FUNC6(struct wiphy *wiphy, bool enabled)
{
	struct wilc *wl = FUNC5(wiphy);
	struct wilc_vif *vif;

	FUNC1(&wl->vif_mutex);
	vif = FUNC4(wl);
	if (FUNC0(vif)) {
		FUNC2(&wl->vif_mutex);
		return;
	}

	FUNC3(vif->ndev, "cfg set wake up = %d\n", enabled);
	FUNC2(&wl->vif_mutex);
}