
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsi_hw {int num_debugfs_entries; TYPE_1__* hw; struct rsi_debugfs* dfsentry; struct rsi_common* priv; } ;
struct rsi_debugfs {int subdir; int * rsi_files; } ;
struct rsi_dbg_files {int fops; int perms; int name; } ;
struct rsi_common {int dummy; } ;
typedef int devdir ;
struct TYPE_2__ {int wiphy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (int ,int ,int ,struct rsi_common*,int *) ;
 struct rsi_dbg_files* dev_debugfs_files ;
 struct rsi_debugfs* kzalloc (int,int ) ;
 int snprintf (char*,int,char*,char*) ;
 char* wiphy_name (int ) ;

int rsi_init_dbgfs(struct rsi_hw *adapter)
{
 struct rsi_common *common = adapter->priv;
 struct rsi_debugfs *dev_dbgfs;
 char devdir[6];
 int ii;
 const struct rsi_dbg_files *files;

 dev_dbgfs = kzalloc(sizeof(*dev_dbgfs), GFP_KERNEL);
 if (!dev_dbgfs)
  return -ENOMEM;

 adapter->dfsentry = dev_dbgfs;

 snprintf(devdir, sizeof(devdir), "%s",
   wiphy_name(adapter->hw->wiphy));

 dev_dbgfs->subdir = debugfs_create_dir(devdir, ((void*)0));

 for (ii = 0; ii < adapter->num_debugfs_entries; ii++) {
  files = &dev_debugfs_files[ii];
  dev_dbgfs->rsi_files[ii] =
  debugfs_create_file(files->name,
        files->perms,
        dev_dbgfs->subdir,
        common,
        &files->fops);
 }
 return 0;
}
