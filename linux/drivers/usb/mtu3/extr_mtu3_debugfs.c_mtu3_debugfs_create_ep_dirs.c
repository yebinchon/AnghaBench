
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int dbgfs_root; } ;
struct mtu3 {int num_eps; scalar_t__ out_eps; scalar_t__ in_eps; struct ssusb_mtk* ssusb; } ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_dir (char*,int ) ;
 int mtu3_debugfs_create_ep_dir (scalar_t__,struct dentry*) ;

__attribute__((used)) static void mtu3_debugfs_create_ep_dirs(struct mtu3 *mtu)
{
 struct ssusb_mtk *ssusb = mtu->ssusb;
 struct dentry *dir_eps;
 int i;

 dir_eps = debugfs_create_dir("eps", ssusb->dbgfs_root);

 for (i = 1; i < mtu->num_eps; i++) {
  mtu3_debugfs_create_ep_dir(mtu->in_eps + i, dir_eps);
  mtu3_debugfs_create_ep_dir(mtu->out_eps + i, dir_eps);
 }
}
