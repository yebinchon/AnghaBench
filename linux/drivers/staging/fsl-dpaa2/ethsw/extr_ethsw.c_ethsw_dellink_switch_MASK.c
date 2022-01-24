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
typedef  size_t u16 ;
struct ethsw_port_priv {scalar_t__* vlans; } ;
struct TYPE_2__ {int num_ifs; } ;
struct ethsw_core {struct ethsw_port_priv** ports; TYPE_1__ sw_attr; scalar_t__* vlans; int /*<<< orphan*/  dev; int /*<<< orphan*/  dpsw_handle; int /*<<< orphan*/  mc_io; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC2(struct ethsw_core *ethsw, u16 vid)
{
	struct ethsw_port_priv *ppriv_local = NULL;
	int i, err;

	if (!ethsw->vlans[vid])
		return -ENOENT;

	err = FUNC1(ethsw->mc_io, 0, ethsw->dpsw_handle, vid);
	if (err) {
		FUNC0(ethsw->dev, "dpsw_vlan_remove err %d\n", err);
		return err;
	}
	ethsw->vlans[vid] = 0;

	for (i = 0; i < ethsw->sw_attr.num_ifs; i++) {
		ppriv_local = ethsw->ports[i];
		ppriv_local->vlans[vid] = 0;
	}

	return 0;
}