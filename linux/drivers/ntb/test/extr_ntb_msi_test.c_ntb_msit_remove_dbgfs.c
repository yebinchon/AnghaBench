
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_msit_ctx {int dbgfs_dir; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void ntb_msit_remove_dbgfs(struct ntb_msit_ctx *nm)
{
 debugfs_remove_recursive(nm->dbgfs_dir);
}
