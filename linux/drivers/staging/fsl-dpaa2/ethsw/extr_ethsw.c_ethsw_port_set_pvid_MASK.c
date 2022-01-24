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
typedef  size_t u16 ;
struct net_device {int dummy; } ;
struct ethsw_port_priv {size_t pvid; int /*<<< orphan*/  idx; int /*<<< orphan*/ * vlans; struct net_device* netdev; struct ethsw_core* ethsw_data; } ;
struct ethsw_core {int /*<<< orphan*/  dpsw_handle; int /*<<< orphan*/  mc_io; } ;
struct dpsw_tci_cfg {size_t vlan_id; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHSW_VLAN_PVID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpsw_tci_cfg*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpsw_tci_cfg*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 
 int FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct ethsw_port_priv *port_priv, u16 pvid)
{
	struct ethsw_core *ethsw = port_priv->ethsw_data;
	struct net_device *netdev = port_priv->netdev;
	struct dpsw_tci_cfg tci_cfg = { 0 };
	bool is_oper;
	int err, ret;

	err = FUNC2(ethsw->mc_io, 0, ethsw->dpsw_handle,
			      port_priv->idx, &tci_cfg);
	if (err) {
		FUNC4(netdev, "dpsw_if_get_tci err %d\n", err);
		return err;
	}

	tci_cfg.vlan_id = pvid;

	/* Interface needs to be down to change PVID */
	is_oper = FUNC5(netdev);
	if (is_oper) {
		err = FUNC0(ethsw->mc_io, 0,
				      ethsw->dpsw_handle,
				      port_priv->idx);
		if (err) {
			FUNC4(netdev, "dpsw_if_disable err %d\n", err);
			return err;
		}
	}

	err = FUNC3(ethsw->mc_io, 0, ethsw->dpsw_handle,
			      port_priv->idx, &tci_cfg);
	if (err) {
		FUNC4(netdev, "dpsw_if_set_tci err %d\n", err);
		goto set_tci_error;
	}

	/* Delete previous PVID info and mark the new one */
	port_priv->vlans[port_priv->pvid] &= ~ETHSW_VLAN_PVID;
	port_priv->vlans[pvid] |= ETHSW_VLAN_PVID;
	port_priv->pvid = pvid;

set_tci_error:
	if (is_oper) {
		ret = FUNC1(ethsw->mc_io, 0,
				     ethsw->dpsw_handle,
				     port_priv->idx);
		if (ret) {
			FUNC4(netdev, "dpsw_if_enable err %d\n", ret);
			return ret;
		}
	}

	return err;
}