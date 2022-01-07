
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int dummy; } ;


 int configfs_fill_super ;
 int get_tree_single (struct fs_context*,int ) ;

__attribute__((used)) static int configfs_get_tree(struct fs_context *fc)
{
 return get_tree_single(fc, configfs_fill_super);
}
