
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_dbg_ctx {int * bdf_dentry; } ;


 int debugfs_remove_recursive (int *) ;

void
qedi_dbg_host_exit(struct qedi_dbg_ctx *qedi)
{
 debugfs_remove_recursive(qedi->bdf_dentry);
 qedi->bdf_dentry = ((void*)0);
}
