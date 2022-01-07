
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dbg_dir; } ;


 int debugfs_remove_recursive (int ) ;

void rproc_delete_debug_dir(struct rproc *rproc)
{
 if (!rproc->dbg_dir)
  return;

 debugfs_remove_recursive(rproc->dbg_dir);
}
