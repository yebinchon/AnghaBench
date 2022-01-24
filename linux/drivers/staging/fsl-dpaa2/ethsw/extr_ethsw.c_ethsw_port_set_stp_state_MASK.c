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
typedef  scalar_t__ u8 ;
struct ethsw_port_priv {scalar_t__ stp_state; int /*<<< orphan*/  netdev; int /*<<< orphan*/  idx; TYPE_1__* ethsw_data; } ;
struct dpsw_stp_cfg {scalar_t__ state; int /*<<< orphan*/  vlan_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  dpsw_handle; int /*<<< orphan*/  mc_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_VLAN_ID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpsw_stp_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ethsw_port_priv *port_priv, u8 state)
{
	struct dpsw_stp_cfg stp_cfg = {
		.vlan_id = DEFAULT_VLAN_ID,
		.state = state,
	};
	int err;

	if (!FUNC2(port_priv->netdev) || state == port_priv->stp_state)
		return 0;	/* Nothing to do */

	err = FUNC0(port_priv->ethsw_data->mc_io, 0,
			      port_priv->ethsw_data->dpsw_handle,
			      port_priv->idx, &stp_cfg);
	if (err) {
		FUNC1(port_priv->netdev,
			   "dpsw_if_set_stp err %d\n", err);
		return err;
	}

	port_priv->stp_state = state;

	return 0;
}