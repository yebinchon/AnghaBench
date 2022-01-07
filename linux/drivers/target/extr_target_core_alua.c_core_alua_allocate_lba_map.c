
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct t10_alua_lba_map {int lba_map_list; void* lba_map_last_lba; void* lba_map_first_lba; int lba_map_mem_list; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 struct t10_alua_lba_map* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct t10_alua_lba_map* kmem_cache_zalloc (int ,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int pr_err (char*) ;
 int t10_alua_lba_map_cache ;

struct t10_alua_lba_map *
core_alua_allocate_lba_map(struct list_head *list,
      u64 first_lba, u64 last_lba)
{
 struct t10_alua_lba_map *lba_map;

 lba_map = kmem_cache_zalloc(t10_alua_lba_map_cache, GFP_KERNEL);
 if (!lba_map) {
  pr_err("Unable to allocate struct t10_alua_lba_map\n");
  return ERR_PTR(-ENOMEM);
 }
 INIT_LIST_HEAD(&lba_map->lba_map_mem_list);
 lba_map->lba_map_first_lba = first_lba;
 lba_map->lba_map_last_lba = last_lba;

 list_add_tail(&lba_map->lba_map_list, list);
 return lba_map;
}
