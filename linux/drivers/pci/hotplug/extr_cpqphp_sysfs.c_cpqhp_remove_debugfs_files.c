
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int * dentry; } ;


 int debugfs_remove (int *) ;

void cpqhp_remove_debugfs_files(struct controller *ctrl)
{
 debugfs_remove(ctrl->dentry);
 ctrl->dentry = ((void*)0);
}
