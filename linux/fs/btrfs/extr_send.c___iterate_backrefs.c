
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct clone_root {scalar_t__ root; scalar_t__ ino; scalar_t__ offset; int found_refs; } ;
struct backref_ctx {scalar_t__ cur_objectid; scalar_t__ cur_offset; int found_itself; scalar_t__ extent_len; int found; TYPE_1__* sctx; } ;
struct TYPE_2__ {scalar_t__ send_root; int clone_roots_cnt; int clone_roots; } ;


 int __clone_root_cmp_bsearch ;
 struct clone_root* bsearch (void*,int ,int ,int,int ) ;

__attribute__((used)) static int __iterate_backrefs(u64 ino, u64 offset, u64 root, void *ctx_)
{
 struct backref_ctx *bctx = ctx_;
 struct clone_root *found;


 found = bsearch((void *)(uintptr_t)root, bctx->sctx->clone_roots,
   bctx->sctx->clone_roots_cnt,
   sizeof(struct clone_root),
   __clone_root_cmp_bsearch);
 if (!found)
  return 0;

 if (found->root == bctx->sctx->send_root &&
     ino == bctx->cur_objectid &&
     offset == bctx->cur_offset) {
  bctx->found_itself = 1;
 }





 if (found->root == bctx->sctx->send_root) {






  if (ino >= bctx->cur_objectid)
   return 0;
 }

 bctx->found++;
 found->found_refs++;
 if (ino < found->ino) {
  found->ino = ino;
  found->offset = offset;
 } else if (found->ino == ino) {



  if (found->offset > offset + bctx->extent_len)
   found->offset = offset;
 }

 return 0;
}
