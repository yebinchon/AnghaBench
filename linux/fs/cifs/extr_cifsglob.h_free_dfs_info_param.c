
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_info3_param {int node_name; int path_name; } ;


 int kfree (int ) ;

__attribute__((used)) static inline void free_dfs_info_param(struct dfs_info3_param *param)
{
 if (param) {
  kfree(param->path_name);
  kfree(param->node_name);
 }
}
