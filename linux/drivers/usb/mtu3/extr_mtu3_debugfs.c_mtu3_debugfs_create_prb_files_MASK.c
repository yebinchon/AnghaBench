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
struct ssusb_mtk {int /*<<< orphan*/  dbgfs_root; } ;
struct mtu3 {int /*<<< orphan*/  ippc_base; struct ssusb_mtk* ssusb; } ;
struct dentry {int dummy; } ;
struct debugfs_reg32 {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct debugfs_reg32*) ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct dentry*,struct mtu3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mtu3*,int /*<<< orphan*/ ,struct debugfs_reg32*,int,char*,struct dentry*) ; 
 struct debugfs_reg32* mtu3_prb_regs ; 
 int /*<<< orphan*/  mtu3_probe_fops ; 

__attribute__((used)) static void FUNC4(struct mtu3 *mtu)
{
	struct ssusb_mtk *ssusb = mtu->ssusb;
	struct debugfs_reg32 *regs;
	struct dentry *dir_prb;
	int i;

	dir_prb = FUNC1("probe", ssusb->dbgfs_root);

	for (i = 0; i < FUNC0(mtu3_prb_regs); i++) {
		regs = &mtu3_prb_regs[i];
		FUNC2(regs->name, 0644, dir_prb,
				    mtu, &mtu3_probe_fops);
	}

	FUNC3(mtu, mtu->ippc_base, mtu3_prb_regs,
			    FUNC0(mtu3_prb_regs), "regs", dir_prb);
}