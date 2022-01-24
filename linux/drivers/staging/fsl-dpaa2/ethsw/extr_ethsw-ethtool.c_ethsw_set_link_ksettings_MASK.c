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
struct TYPE_2__ {scalar_t__ autoneg; scalar_t__ duplex; int /*<<< orphan*/  speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct ethsw_port_priv {int /*<<< orphan*/  idx; struct ethsw_core* ethsw_data; } ;
struct ethsw_core {int /*<<< orphan*/  dpsw_handle; int /*<<< orphan*/  mc_io; } ;
struct dpsw_link_cfg {int /*<<< orphan*/  options; int /*<<< orphan*/  rate; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  DPSW_LINK_OPT_AUTONEG ; 
 int /*<<< orphan*/  DPSW_LINK_OPT_HALF_DUPLEX ; 
 scalar_t__ DUPLEX_HALF ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpsw_link_cfg*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int) ; 
 struct ethsw_port_priv* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev,
			 const struct ethtool_link_ksettings *link_ksettings)
{
	struct ethsw_port_priv *port_priv = FUNC4(netdev);
	struct ethsw_core *ethsw = port_priv->ethsw_data;
	struct dpsw_link_cfg cfg = {0};
	bool if_running;
	int err = 0, ret;

	/* Interface needs to be down to change link settings */
	if_running = FUNC5(netdev);
	if (if_running) {
		err = FUNC0(ethsw->mc_io, 0,
				      ethsw->dpsw_handle,
				      port_priv->idx);
		if (err) {
			FUNC3(netdev, "dpsw_if_disable err %d\n", err);
			return err;
		}
	}

	cfg.rate = link_ksettings->base.speed;
	if (link_ksettings->base.autoneg == AUTONEG_ENABLE)
		cfg.options |= DPSW_LINK_OPT_AUTONEG;
	else
		cfg.options &= ~DPSW_LINK_OPT_AUTONEG;
	if (link_ksettings->base.duplex  == DUPLEX_HALF)
		cfg.options |= DPSW_LINK_OPT_HALF_DUPLEX;
	else
		cfg.options &= ~DPSW_LINK_OPT_HALF_DUPLEX;

	err = FUNC2(port_priv->ethsw_data->mc_io, 0,
				   port_priv->ethsw_data->dpsw_handle,
				   port_priv->idx,
				   &cfg);

	if (if_running) {
		ret = FUNC1(ethsw->mc_io, 0,
				     ethsw->dpsw_handle,
				     port_priv->idx);
		if (ret) {
			FUNC3(netdev, "dpsw_if_enable err %d\n", ret);
			return ret;
		}
	}
	return err;
}