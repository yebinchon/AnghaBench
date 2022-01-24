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
struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int initialized; int /*<<< orphan*/  txq_event; int /*<<< orphan*/  hif_cs; TYPE_1__* hif_func; int /*<<< orphan*/  dev_irq_num; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_interrupt ) (struct wilc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 struct wilc_vif* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct wilc*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct wilc*,struct wilc_vif*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static void FUNC13(struct net_device *dev)
{
	struct wilc_vif *vif = FUNC7(dev);
	struct wilc *wl = vif->wilc;

	if (!wl) {
		FUNC5(dev, "wl is NULL\n");
		return;
	}

	if (wl->initialized) {
		FUNC6(dev, "Deinitializing wilc1000...\n");

		if (!wl->dev_irq_num &&
		    wl->hif_func->disable_interrupt) {
			FUNC2(&wl->hif_cs);
			wl->hif_func->disable_interrupt(wl);
			FUNC3(&wl->hif_cs);
		}
		FUNC0(&wl->txq_event);

		FUNC12(dev);
		FUNC1(dev);

		FUNC10(wl, vif);
		FUNC9(dev);
		FUNC11(dev);

		wl->initialized = false;

		FUNC4(dev, "wilc1000 deinitialization Done\n");
	} else {
		FUNC4(dev, "wilc1000 is not initialized\n");
	}
}