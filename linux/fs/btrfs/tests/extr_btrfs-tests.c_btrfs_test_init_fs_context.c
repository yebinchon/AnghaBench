
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseudo_fs_context {int * ops; } ;
struct fs_context {int dummy; } ;


 int BTRFS_TEST_MAGIC ;
 int ENOMEM ;
 int btrfs_test_super_ops ;
 struct pseudo_fs_context* init_pseudo (struct fs_context*,int ) ;

__attribute__((used)) static int btrfs_test_init_fs_context(struct fs_context *fc)
{
 struct pseudo_fs_context *ctx = init_pseudo(fc, BTRFS_TEST_MAGIC);
 if (!ctx)
  return -ENOMEM;
 ctx->ops = &btrfs_test_super_ops;
 return 0;
}
