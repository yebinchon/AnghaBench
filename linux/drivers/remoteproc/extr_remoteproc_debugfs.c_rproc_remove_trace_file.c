
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int debugfs_remove (struct dentry*) ;

void rproc_remove_trace_file(struct dentry *tfile)
{
 debugfs_remove(tfile);
}
