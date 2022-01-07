
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int cmp_key; int right_path; int parent_root; } ;


 int __record_deleted_ref ;
 int iterate_inode_ref (int ,int ,int ,int ,int ,struct send_ctx*) ;

__attribute__((used)) static int record_deleted_ref(struct send_ctx *sctx)
{
 int ret;

 ret = iterate_inode_ref(sctx->parent_root, sctx->right_path,
    sctx->cmp_key, 0, __record_deleted_ref, sctx);
 if (ret < 0)
  goto out;
 ret = 0;

out:
 return ret;
}
