
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btt {size_t rawsize; int arena_list; int nlba; } ;
struct arena_info {int list; scalar_t__ nextoff; scalar_t__ size; scalar_t__ external_nlba; } ;


 int ARENA_MAX_SIZE ;
 size_t ARENA_MIN_SIZE ;
 int ENOMEM ;
 struct arena_info* alloc_arena (struct btt*,size_t,int ,size_t) ;
 int free_arenas (struct btt*) ;
 int list_add_tail (int *,int *) ;
 size_t min_t (int ,int ,size_t) ;
 int u64 ;

__attribute__((used)) static int create_arenas(struct btt *btt)
{
 size_t remaining = btt->rawsize;
 size_t cur_off = 0;

 while (remaining) {
  struct arena_info *arena;
  size_t arena_size = min_t(u64, ARENA_MAX_SIZE, remaining);

  remaining -= arena_size;
  if (arena_size < ARENA_MIN_SIZE)
   break;

  arena = alloc_arena(btt, arena_size, btt->nlba, cur_off);
  if (!arena) {
   free_arenas(btt);
   return -ENOMEM;
  }
  btt->nlba += arena->external_nlba;
  if (remaining >= ARENA_MIN_SIZE)
   arena->nextoff = arena->size;
  else
   arena->nextoff = 0;
  cur_off += arena_size;
  list_add_tail(&arena->list, &btt->arena_list);
 }

 return 0;
}
