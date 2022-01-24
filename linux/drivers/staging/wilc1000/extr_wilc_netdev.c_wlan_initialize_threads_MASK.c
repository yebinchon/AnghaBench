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
struct wilc {int /*<<< orphan*/  txq_thread_started; int /*<<< orphan*/  txq_thread; scalar_t__ close; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct wilc_vif* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wilc_txq_task ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct wilc_vif *vif = FUNC4(dev);
	struct wilc *wilc = vif->wilc;

	wilc->txq_thread = FUNC2(wilc_txq_task, (void *)wilc,
				       "K_TXQ_TASK");
	if (FUNC0(wilc->txq_thread)) {
		FUNC3(dev, "couldn't create TXQ thread\n");
		wilc->close = 0;
		return FUNC1(wilc->txq_thread);
	}
	FUNC5(&wilc->txq_thread_started);

	return 0;
}