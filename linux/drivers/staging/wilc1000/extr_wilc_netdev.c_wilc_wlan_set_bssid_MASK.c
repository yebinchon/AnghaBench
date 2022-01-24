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
struct wilc_vif {int /*<<< orphan*/  mode; int /*<<< orphan*/  bssid; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct wilc_vif* FUNC2 (struct net_device*) ; 

void FUNC3(struct net_device *wilc_netdev, u8 *bssid, u8 mode)
{
	struct wilc_vif *vif = FUNC2(wilc_netdev);

	if (bssid)
		FUNC1(vif->bssid, bssid);
	else
		FUNC0(vif->bssid);

	vif->mode = mode;
}