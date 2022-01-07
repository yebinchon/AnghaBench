
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int debugfs; } ;


 int debugfs_remove_recursive (int ) ;

void dbg_remove_files(struct ci_hdrc *ci)
{
 debugfs_remove_recursive(ci->debugfs);
}
