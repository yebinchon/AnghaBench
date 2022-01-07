
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct rproc {int dbg_dir; struct device dev; } ;


 int debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int,int ,struct rproc*,int *) ;
 int dev_name (struct device*) ;
 int rproc_carveouts_ops ;
 int rproc_crash_ops ;
 int rproc_dbg ;
 int rproc_name_ops ;
 int rproc_recovery_ops ;
 int rproc_rsc_table_ops ;

void rproc_create_debug_dir(struct rproc *rproc)
{
 struct device *dev = &rproc->dev;

 if (!rproc_dbg)
  return;

 rproc->dbg_dir = debugfs_create_dir(dev_name(dev), rproc_dbg);
 if (!rproc->dbg_dir)
  return;

 debugfs_create_file("name", 0400, rproc->dbg_dir,
       rproc, &rproc_name_ops);
 debugfs_create_file("recovery", 0400, rproc->dbg_dir,
       rproc, &rproc_recovery_ops);
 debugfs_create_file("crash", 0200, rproc->dbg_dir,
       rproc, &rproc_crash_ops);
 debugfs_create_file("resource_table", 0400, rproc->dbg_dir,
       rproc, &rproc_rsc_table_ops);
 debugfs_create_file("carveout_memories", 0400, rproc->dbg_dir,
       rproc, &rproc_carveouts_ops);
}
