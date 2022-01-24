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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct ethsw_port_priv {int /*<<< orphan*/  idx; struct ethsw_core* ethsw_data; struct net_device* netdev; } ;
struct ethsw_core {int /*<<< orphan*/  dpsw_handle; int /*<<< orphan*/  mc_io; } ;
struct dpsw_vlan_if_cfg {int num_ifs; int /*<<< orphan*/ * if_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_VLAN_ID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpsw_vlan_if_cfg*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpsw_vlan_if_cfg*) ; 
 int FUNC2 (struct ethsw_port_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct ethsw_port_priv *port_priv, u16 port)
{
	struct net_device *netdev = port_priv->netdev;
	struct ethsw_core *ethsw = port_priv->ethsw_data;
	struct dpsw_vlan_if_cfg vcfg;
	int err;

	/* Switch starts with all ports configured to VLAN 1. Need to
	 * remove this setting to allow configuration at bridge join
	 */
	vcfg.num_ifs = 1;
	vcfg.if_id[0] = port_priv->idx;

	err = FUNC1(ethsw->mc_io, 0, ethsw->dpsw_handle,
					   DEFAULT_VLAN_ID, &vcfg);
	if (err) {
		FUNC3(netdev, "dpsw_vlan_remove_if_untagged err %d\n",
			   err);
		return err;
	}

	err = FUNC2(port_priv, 0);
	if (err)
		return err;

	err = FUNC0(ethsw->mc_io, 0, ethsw->dpsw_handle,
				  DEFAULT_VLAN_ID, &vcfg);
	if (err)
		FUNC3(netdev, "dpsw_vlan_remove_if err %d\n", err);

	return err;
}