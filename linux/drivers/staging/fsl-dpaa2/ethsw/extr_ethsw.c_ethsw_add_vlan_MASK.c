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
struct ethsw_core {int /*<<< orphan*/ * vlans; int /*<<< orphan*/  dev; int /*<<< orphan*/  dpsw_handle; int /*<<< orphan*/  mc_io; } ;
struct dpsw_vlan_cfg {int /*<<< orphan*/  fdb_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHSW_VLAN_MEMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,struct dpsw_vlan_cfg*) ; 

__attribute__((used)) static int FUNC2(struct ethsw_core *ethsw, u16 vid)
{
	int err;

	struct dpsw_vlan_cfg	vcfg = {
		.fdb_id = 0,
	};

	err = FUNC1(ethsw->mc_io, 0,
			    ethsw->dpsw_handle, vid, &vcfg);
	if (err) {
		FUNC0(ethsw->dev, "dpsw_vlan_add err %d\n", err);
		return err;
	}
	ethsw->vlans[vid] = ETHSW_VLAN_MEMBER;

	return 0;
}