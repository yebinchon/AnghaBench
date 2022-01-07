
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_ctx {int dbgfs_dir; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void perf_clear_dbgfs(struct perf_ctx *perf)
{
 debugfs_remove_recursive(perf->dbgfs_dir);
}
