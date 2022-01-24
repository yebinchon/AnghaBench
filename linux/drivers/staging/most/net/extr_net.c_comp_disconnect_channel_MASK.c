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
struct net_dev_channel {int linked; int ch_id; } ;
struct net_dev_context {int /*<<< orphan*/  dev; int /*<<< orphan*/  list; struct net_dev_channel tx; struct net_dev_channel rx; } ;
struct most_interface {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct net_dev_context* FUNC1 (struct most_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  probe_disc_mt ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct most_interface *iface,
				   int channel_idx)
{
	struct net_dev_context *nd;
	struct net_dev_channel *ch;
	unsigned long flags;
	int ret = 0;

	FUNC3(&probe_disc_mt);
	nd = FUNC1(iface);
	if (!nd) {
		ret = -EINVAL;
		goto unlock;
	}

	if (nd->rx.linked && channel_idx == nd->rx.ch_id) {
		ch = &nd->rx;
	} else if (nd->tx.linked && channel_idx == nd->tx.ch_id) {
		ch = &nd->tx;
	} else {
		ret = -EINVAL;
		goto unlock;
	}

	if (nd->rx.linked && nd->tx.linked) {
		FUNC5(&list_lock, flags);
		ch->linked = false;
		FUNC6(&list_lock, flags);

		/*
		 * do not call most_stop_channel() here, because channels are
		 * going to be closed in ndo_stop() after unregister_netdev()
		 */
		FUNC7(nd->dev);
	} else {
		FUNC5(&list_lock, flags);
		FUNC2(&nd->list);
		FUNC6(&list_lock, flags);

		FUNC0(nd->dev);
	}

unlock:
	FUNC4(&probe_disc_mt);
	return ret;
}