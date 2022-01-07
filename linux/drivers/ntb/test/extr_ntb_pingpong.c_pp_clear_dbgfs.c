
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_ctx {int dbgfs_dir; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void pp_clear_dbgfs(struct pp_ctx *pp)
{
 debugfs_remove_recursive(pp->dbgfs_dir);
}
