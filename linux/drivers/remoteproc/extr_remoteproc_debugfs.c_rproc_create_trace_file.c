
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_debug_trace {int dummy; } ;
struct rproc {int dev; int dbg_dir; } ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_file (char const*,int,int ,struct rproc_debug_trace*,int *) ;
 int dev_err (int *,char*) ;
 int trace_rproc_ops ;

struct dentry *rproc_create_trace_file(const char *name, struct rproc *rproc,
           struct rproc_debug_trace *trace)
{
 struct dentry *tfile;

 tfile = debugfs_create_file(name, 0400, rproc->dbg_dir, trace,
        &trace_rproc_ops);
 if (!tfile) {
  dev_err(&rproc->dev, "failed to create debugfs trace entry\n");
  return ((void*)0);
 }

 return tfile;
}
