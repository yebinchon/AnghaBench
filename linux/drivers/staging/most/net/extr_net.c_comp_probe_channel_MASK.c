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
struct net_device {int dummy; } ;
struct net_dev_channel {int linked; int ch_id; } ;
struct net_dev_context {struct net_device* dev; struct net_dev_channel rx; struct net_dev_channel tx; int /*<<< orphan*/  list; struct most_interface* iface; } ;
struct most_interface {int dummy; } ;
struct most_channel_config {scalar_t__ data_type; scalar_t__ direction; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ MOST_CH_ASYNC ; 
 scalar_t__ MOST_CH_TX ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 struct net_device* FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_dev_context* FUNC1 (struct most_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  most_nd_setup ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  net_devices ; 
 struct net_dev_context* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  probe_disc_mt ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct most_interface *iface, int channel_idx,
			      struct most_channel_config *ccfg, char *name,
			      char *args)
{
	struct net_dev_context *nd;
	struct net_dev_channel *ch;
	struct net_device *dev;
	unsigned long flags;
	int ret = 0;

	if (!iface)
		return -EINVAL;

	if (ccfg->data_type != MOST_CH_ASYNC)
		return -EINVAL;

	FUNC3(&probe_disc_mt);
	nd = FUNC1(iface);
	if (!nd) {
		dev = FUNC0(sizeof(struct net_dev_context), "meth%d",
				   NET_NAME_UNKNOWN, most_nd_setup);
		if (!dev) {
			ret = -ENOMEM;
			goto unlock;
		}

		nd = FUNC5(dev);
		nd->iface = iface;
		nd->dev = dev;

		FUNC8(&list_lock, flags);
		FUNC2(&nd->list, &net_devices);
		FUNC9(&list_lock, flags);

		ch = ccfg->direction == MOST_CH_TX ? &nd->tx : &nd->rx;
	} else {
		ch = ccfg->direction == MOST_CH_TX ? &nd->tx : &nd->rx;
		if (ch->linked) {
			FUNC6("direction is allocated\n");
			ret = -EINVAL;
			goto unlock;
		}

		if (FUNC7(nd->dev)) {
			FUNC6("register_netdev() failed\n");
			ret = -EINVAL;
			goto unlock;
		}
	}
	ch->ch_id = channel_idx;
	ch->linked = true;

unlock:
	FUNC4(&probe_disc_mt);
	return ret;
}