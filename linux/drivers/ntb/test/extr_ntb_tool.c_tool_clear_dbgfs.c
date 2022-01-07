
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_ctx {int dbgfs_dir; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void tool_clear_dbgfs(struct tool_ctx *tc)
{
 debugfs_remove_recursive(tc->dbgfs_dir);
}
