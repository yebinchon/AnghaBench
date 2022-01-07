
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int dbgfs_root; struct mtu3* u3d; } ;
struct mtu3 {int mac_base; int ippc_base; } ;
struct dentry {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct dentry* debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,struct mtu3*,int *) ;
 int mtu3_csr_regs ;
 int mtu3_debugfs_create_ep_dirs (struct mtu3*) ;
 int mtu3_debugfs_create_prb_files (struct mtu3*) ;
 int mtu3_debugfs_regset (struct mtu3*,int ,int ,int ,char*,struct dentry*) ;
 int mtu3_dev_regs ;
 int mtu3_ep_used_fops ;
 int mtu3_ippc_regs ;
 int mtu3_link_state_fops ;

void ssusb_dev_debugfs_init(struct ssusb_mtk *ssusb)
{
 struct mtu3 *mtu = ssusb->u3d;
 struct dentry *dir_regs;

 dir_regs = debugfs_create_dir("regs", ssusb->dbgfs_root);

 mtu3_debugfs_regset(mtu, mtu->ippc_base,
       mtu3_ippc_regs, ARRAY_SIZE(mtu3_ippc_regs),
       "reg-ippc", dir_regs);

 mtu3_debugfs_regset(mtu, mtu->mac_base,
       mtu3_dev_regs, ARRAY_SIZE(mtu3_dev_regs),
       "reg-dev", dir_regs);

 mtu3_debugfs_regset(mtu, mtu->mac_base,
       mtu3_csr_regs, ARRAY_SIZE(mtu3_csr_regs),
       "reg-csr", dir_regs);

 mtu3_debugfs_create_ep_dirs(mtu);

 mtu3_debugfs_create_prb_files(mtu);

 debugfs_create_file("link-state", 0444, ssusb->dbgfs_root,
       mtu, &mtu3_link_state_fops);
 debugfs_create_file("ep-used", 0444, ssusb->dbgfs_root,
       mtu, &mtu3_ep_used_fops);
}
