
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct arena_info {size_t nfree; TYPE_1__* map_locks; } ;
struct aligned_lock {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kcalloc (size_t,int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int btt_maplocks_init(struct arena_info *arena)
{
 u32 i;

 arena->map_locks = kcalloc(arena->nfree, sizeof(struct aligned_lock),
    GFP_KERNEL);
 if (!arena->map_locks)
  return -ENOMEM;

 for (i = 0; i < arena->nfree; i++)
  spin_lock_init(&arena->map_locks[i].lock);

 return 0;
}
