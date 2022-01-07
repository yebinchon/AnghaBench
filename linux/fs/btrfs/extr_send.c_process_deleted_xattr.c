
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int right_path; int parent_root; } ;


 int __process_deleted_xattr ;
 int iterate_dir_item (int ,int ,int ,struct send_ctx*) ;

__attribute__((used)) static int process_deleted_xattr(struct send_ctx *sctx)
{
 return iterate_dir_item(sctx->parent_root, sctx->right_path,
    __process_deleted_xattr, sctx);
}
