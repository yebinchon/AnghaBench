
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int right_path; int parent_root; int left_path; int send_root; } ;


 int __process_changed_deleted_xattr ;
 int __process_changed_new_xattr ;
 int iterate_dir_item (int ,int ,int ,struct send_ctx*) ;

__attribute__((used)) static int process_changed_xattr(struct send_ctx *sctx)
{
 int ret = 0;

 ret = iterate_dir_item(sctx->send_root, sctx->left_path,
   __process_changed_new_xattr, sctx);
 if (ret < 0)
  goto out;
 ret = iterate_dir_item(sctx->parent_root, sctx->right_path,
   __process_changed_deleted_xattr, sctx);

out:
 return ret;
}
