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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int mtu; } ;
struct ethsw_port_priv {int /*<<< orphan*/  idx; TYPE_1__* ethsw_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dpsw_handle; int /*<<< orphan*/  mc_io; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 struct ethsw_port_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, int mtu)
{
	struct ethsw_port_priv *port_priv = FUNC3(netdev);
	int err;

	err = FUNC1(port_priv->ethsw_data->mc_io,
					   0,
					   port_priv->ethsw_data->dpsw_handle,
					   port_priv->idx,
					   (u16)FUNC0(mtu));
	if (err) {
		FUNC2(netdev,
			   "dpsw_if_set_max_frame_length() err %d\n", err);
		return err;
	}

	netdev->mtu = mtu;
	return 0;
}