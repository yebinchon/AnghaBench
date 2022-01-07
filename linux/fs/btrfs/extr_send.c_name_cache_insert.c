
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_cache_entry {int list; int radix_list; scalar_t__ ino; } ;
struct send_ctx {int name_cache_size; struct name_cache_entry name_cache_list; int name_cache; } ;
struct list_head {int list; int radix_list; scalar_t__ ino; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct name_cache_entry*) ;
 int kfree (struct name_cache_entry*) ;
 struct name_cache_entry* kmalloc (int,int ) ;
 int list_add_tail (int *,struct name_cache_entry*) ;
 int radix_tree_insert (int *,scalar_t__,struct name_cache_entry*) ;
 struct name_cache_entry* radix_tree_lookup (int *,unsigned long) ;

__attribute__((used)) static int name_cache_insert(struct send_ctx *sctx,
        struct name_cache_entry *nce)
{
 int ret = 0;
 struct list_head *nce_head;

 nce_head = radix_tree_lookup(&sctx->name_cache,
   (unsigned long)nce->ino);
 if (!nce_head) {
  nce_head = kmalloc(sizeof(*nce_head), GFP_KERNEL);
  if (!nce_head) {
   kfree(nce);
   return -ENOMEM;
  }
  INIT_LIST_HEAD(nce_head);

  ret = radix_tree_insert(&sctx->name_cache, nce->ino, nce_head);
  if (ret < 0) {
   kfree(nce_head);
   kfree(nce);
   return ret;
  }
 }
 list_add_tail(&nce->radix_list, nce_head);
 list_add_tail(&nce->list, &sctx->name_cache_list);
 sctx->name_cache_size++;

 return ret;
}
