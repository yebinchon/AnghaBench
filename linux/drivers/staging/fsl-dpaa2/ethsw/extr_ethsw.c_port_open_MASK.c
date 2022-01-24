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
struct net_device {int dummy; } ;
struct ethsw_port_priv {int /*<<< orphan*/  idx; TYPE_1__* ethsw_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dpsw_handle; int /*<<< orphan*/  mc_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 struct ethsw_port_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev)
{
	struct ethsw_port_priv *port_priv = FUNC3(netdev);
	int err;

	/* No need to allow Tx as control interface is disabled */
	FUNC4(netdev);

	err = FUNC1(port_priv->ethsw_data->mc_io, 0,
			     port_priv->ethsw_data->dpsw_handle,
			     port_priv->idx);
	if (err) {
		FUNC2(netdev, "dpsw_if_enable err %d\n", err);
		return err;
	}

	/* sync carrier state */
	err = FUNC5(netdev);
	if (err) {
		FUNC2(netdev,
			   "port_carrier_state_sync err %d\n", err);
		goto err_carrier_sync;
	}

	return 0;

err_carrier_sync:
	FUNC0(port_priv->ethsw_data->mc_io, 0,
			port_priv->ethsw_data->dpsw_handle,
			port_priv->idx);
	return err;
}