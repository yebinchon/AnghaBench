
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct send_ctx {int name_cache; int name_cache_size; TYPE_1__* send_root; } ;
struct name_cache_entry {scalar_t__ ino; int list; int radix_list; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int fs_info; } ;


 int btrfs_err (int ,char*,scalar_t__,int ) ;
 int kfree (struct list_head*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (struct list_head*) ;
 int radix_tree_delete (int *,unsigned long) ;
 struct list_head* radix_tree_lookup (int *,unsigned long) ;

__attribute__((used)) static void name_cache_delete(struct send_ctx *sctx,
         struct name_cache_entry *nce)
{
 struct list_head *nce_head;

 nce_head = radix_tree_lookup(&sctx->name_cache,
   (unsigned long)nce->ino);
 if (!nce_head) {
  btrfs_err(sctx->send_root->fs_info,
       "name_cache_delete lookup failed ino %llu cache size %d, leaking memory",
   nce->ino, sctx->name_cache_size);
 }

 list_del(&nce->radix_list);
 list_del(&nce->list);
 sctx->name_cache_size--;




 if (nce_head && list_empty(nce_head)) {
  radix_tree_delete(&sctx->name_cache, (unsigned long)nce->ino);
  kfree(nce_head);
 }
}
