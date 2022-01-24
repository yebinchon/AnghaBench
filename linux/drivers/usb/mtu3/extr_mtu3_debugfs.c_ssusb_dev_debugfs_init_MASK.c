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
struct ssusb_mtk {int /*<<< orphan*/  dbgfs_root; struct mtu3* u3d; } ;
struct mtu3 {int /*<<< orphan*/  mac_base; int /*<<< orphan*/  ippc_base; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,struct mtu3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtu3_csr_regs ; 
 int /*<<< orphan*/  FUNC3 (struct mtu3*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtu3*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtu3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct dentry*) ; 
 int /*<<< orphan*/  mtu3_dev_regs ; 
 int /*<<< orphan*/  mtu3_ep_used_fops ; 
 int /*<<< orphan*/  mtu3_ippc_regs ; 
 int /*<<< orphan*/  mtu3_link_state_fops ; 

void FUNC6(struct ssusb_mtk *ssusb)
{
	struct mtu3 *mtu = ssusb->u3d;
	struct dentry *dir_regs;

	dir_regs = FUNC1("regs", ssusb->dbgfs_root);

	FUNC5(mtu, mtu->ippc_base,
			    mtu3_ippc_regs, FUNC0(mtu3_ippc_regs),
			    "reg-ippc", dir_regs);

	FUNC5(mtu, mtu->mac_base,
			    mtu3_dev_regs, FUNC0(mtu3_dev_regs),
			    "reg-dev", dir_regs);

	FUNC5(mtu, mtu->mac_base,
			    mtu3_csr_regs, FUNC0(mtu3_csr_regs),
			    "reg-csr", dir_regs);

	FUNC3(mtu);

	FUNC4(mtu);

	FUNC2("link-state", 0444, ssusb->dbgfs_root,
			    mtu, &mtu3_link_state_fops);
	FUNC2("ep-used", 0444, ssusb->dbgfs_root,
			    mtu, &mtu3_ep_used_fops);
}