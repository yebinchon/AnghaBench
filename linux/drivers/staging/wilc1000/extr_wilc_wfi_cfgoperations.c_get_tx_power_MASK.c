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
struct wireless_dev {int /*<<< orphan*/  netdev; } ;
struct wiphy {int dummy; } ;
struct wilc_vif {int /*<<< orphan*/  ndev; struct wilc* wilc; } ;
struct wilc {int /*<<< orphan*/  initialized; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wilc_vif* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wilc_vif*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct wiphy *wiphy, struct wireless_dev *wdev,
			int *dbm)
{
	int ret;
	struct wilc_vif *vif = FUNC1(wdev->netdev);
	struct wilc *wl = vif->wilc;

	/* If firmware is not started, return. */
	if (!wl->initialized)
		return -EIO;

	ret = FUNC2(vif, (u8 *)dbm);
	if (ret)
		FUNC0(vif->ndev, "Failed to get tx power\n");

	return ret;
}