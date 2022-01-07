
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int name_cache_list; } ;
struct name_cache_entry {int list; } ;


 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void name_cache_used(struct send_ctx *sctx, struct name_cache_entry *nce)
{
 list_del(&nce->list);
 list_add_tail(&nce->list, &sctx->name_cache_list);
}
