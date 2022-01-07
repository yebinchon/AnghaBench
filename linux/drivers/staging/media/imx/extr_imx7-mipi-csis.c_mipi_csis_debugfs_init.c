
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct csi_state {int debugfs_root; int debug; int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 struct dentry* debugfs_create_bool (char*,int,int ,int *) ;
 int debugfs_create_dir (int ,int *) ;
 struct dentry* debugfs_create_file (char*,int,int ,struct csi_state*,int *) ;
 int debugfs_initialized () ;
 int debugfs_remove_recursive (int ) ;
 int dev_name (int ) ;
 int mipi_csis_dump_regs_fops ;

__attribute__((used)) static int mipi_csis_debugfs_init(struct csi_state *state)
{
 struct dentry *d;

 if (!debugfs_initialized())
  return -ENODEV;

 state->debugfs_root = debugfs_create_dir(dev_name(state->dev), ((void*)0));
 if (!state->debugfs_root)
  return -ENOMEM;

 d = debugfs_create_bool("debug_enable", 0600, state->debugfs_root,
    &state->debug);
 if (!d)
  goto remove_debugfs;

 d = debugfs_create_file("dump_regs", 0600, state->debugfs_root,
    state, &mipi_csis_dump_regs_fops);
 if (!d)
  goto remove_debugfs;

 return 0;

remove_debugfs:
 debugfs_remove_recursive(state->debugfs_root);

 return -ENOMEM;
}
