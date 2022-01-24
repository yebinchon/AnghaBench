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
struct wilc_vif {scalar_t__ mac_opened; scalar_t__ ndev; struct wilc* wilc; } ;
struct wilc {scalar_t__ open_ifcs; int close; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct wilc_vif* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev)
{
	struct wilc_vif *vif = FUNC1(ndev);
	struct wilc *wl = vif->wilc;

	FUNC0(ndev, "Mac close\n");

	if (wl->open_ifcs > 0)
		wl->open_ifcs--;
	else
		return 0;

	if (vif->ndev) {
		FUNC2(vif->ndev);

		FUNC3(vif->ndev);
	}

	if (wl->open_ifcs == 0) {
		FUNC0(ndev, "Deinitializing wilc1000\n");
		wl->close = 1;
		FUNC4(ndev);
	}

	vif->mac_opened = 0;

	return 0;
}