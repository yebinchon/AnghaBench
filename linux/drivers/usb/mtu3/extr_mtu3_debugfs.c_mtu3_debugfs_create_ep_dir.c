
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3_file_map {int name; } ;
struct mtu3_ep {int mtu; int name; } ;
struct dentry {int dummy; } ;


 int ARRAY_SIZE (struct mtu3_file_map*) ;
 struct dentry* debugfs_create_dir (int ,struct dentry*) ;
 int debugfs_create_file (int ,int,struct dentry*,struct mtu3_ep*,int *) ;
 int mtu3_debugfs_ep_regset (int ,struct mtu3_ep*,struct dentry*) ;
 struct mtu3_file_map* mtu3_ep_files ;
 int mtu3_ep_fops ;

__attribute__((used)) static void mtu3_debugfs_create_ep_dir(struct mtu3_ep *mep,
           struct dentry *parent)
{
 const struct mtu3_file_map *files;
 struct dentry *dir_ep;
 int i;

 dir_ep = debugfs_create_dir(mep->name, parent);
 mtu3_debugfs_ep_regset(mep->mtu, mep, dir_ep);

 for (i = 0; i < ARRAY_SIZE(mtu3_ep_files); i++) {
  files = &mtu3_ep_files[i];

  debugfs_create_file(files->name, 0444, dir_ep,
        mep, &mtu3_ep_fops);
 }
}
