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
struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int /*<<< orphan*/  vif_mutex; int /*<<< orphan*/  txq_add_to_head_cs; int /*<<< orphan*/  cfg_cmd_lock; int /*<<< orphan*/  rxq_cs; int /*<<< orphan*/  hif_cs; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct wilc_vif* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct wilc_vif *vif = FUNC1(dev);
	struct wilc *wilc = vif->wilc;

	FUNC0(&wilc->hif_cs);
	FUNC0(&wilc->rxq_cs);
	FUNC0(&wilc->cfg_cmd_lock);
	FUNC0(&wilc->txq_add_to_head_cs);
	FUNC0(&wilc->vif_mutex);
}