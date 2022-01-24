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
struct wilc_priv {int p2p_listen_state; int /*<<< orphan*/  scan_req_lock; } ;
struct wilc_vif {TYPE_1__* wilc; struct wilc_priv priv; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hif_workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct wilc_vif* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct wilc_vif*) ; 

void FUNC5(struct net_device *net)
{
	int ret;
	struct wilc_vif *vif = FUNC3(net);
	struct wilc_priv *priv = &vif->priv;

	priv->p2p_listen_state = false;

	FUNC0(vif->wilc->hif_workqueue);
	FUNC1(&priv->scan_req_lock);
	ret = FUNC4(vif);

	if (ret)
		FUNC2(net, "Error while deinitializing host interface\n");
}