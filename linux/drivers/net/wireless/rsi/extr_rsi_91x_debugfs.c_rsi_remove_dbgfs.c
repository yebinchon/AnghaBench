
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_hw {struct rsi_debugfs* dfsentry; } ;
struct rsi_debugfs {int subdir; } ;


 int debugfs_remove_recursive (int ) ;

void rsi_remove_dbgfs(struct rsi_hw *adapter)
{
 struct rsi_debugfs *dev_dbgfs = adapter->dfsentry;

 if (!dev_dbgfs)
  return;

 debugfs_remove_recursive(dev_dbgfs->subdir);
}
