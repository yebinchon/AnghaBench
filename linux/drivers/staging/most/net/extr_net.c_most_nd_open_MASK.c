#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  ch_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  ch_id; } ;
struct net_dev_context {TYPE_2__ tx; TYPE_3__* iface; TYPE_1__ rx; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* request_netinfo ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  comp ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct net_dev_context* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  on_netinfo ; 
 int /*<<< orphan*/  probe_disc_mt ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct net_dev_context *nd = FUNC6(dev);
	int ret = 0;

	FUNC3(&probe_disc_mt);

	if (FUNC1(nd->iface, nd->rx.ch_id, &comp)) {
		FUNC5(dev, "most_start_channel() failed\n");
		ret = -EBUSY;
		goto unlock;
	}

	if (FUNC1(nd->iface, nd->tx.ch_id, &comp)) {
		FUNC5(dev, "most_start_channel() failed\n");
		FUNC2(nd->iface, nd->rx.ch_id, &comp);
		ret = -EBUSY;
		goto unlock;
	}

	FUNC7(dev);
	if (FUNC0(dev->dev_addr))
		FUNC8(dev);
	else
		FUNC9(dev);
	FUNC10(dev);
	if (nd->iface->request_netinfo)
		nd->iface->request_netinfo(nd->iface, nd->tx.ch_id, on_netinfo);

unlock:
	FUNC4(&probe_disc_mt);
	return ret;
}