
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btt {int lbasize; TYPE_1__* nd_btt; int sector_size; } ;
struct arena_info {size_t size; size_t external_lba_start; int external_lbasize; int nfree; int internal_nlba; int external_nlba; size_t infooff; int dataoff; int mapoff; int logoff; int info2off; int* log_index; void* internal_lbasize; int version_minor; int version_major; int err_lock; int sector_size; TYPE_1__* nd_btt; } ;
struct TYPE_2__ {int version_minor; int version_major; } ;


 int BTT_DEFAULT_NFREE ;
 int BTT_PG_SIZE ;
 int GFP_KERNEL ;
 int INT_LBASIZE_ALIGNMENT ;
 int LOG_GRP_SIZE ;
 int MAP_ENT_SIZE ;
 int div_u64 (int,void*) ;
 struct arena_info* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 void* roundup (int,int) ;

__attribute__((used)) static struct arena_info *alloc_arena(struct btt *btt, size_t size,
    size_t start, size_t arena_off)
{
 struct arena_info *arena;
 u64 logsize, mapsize, datasize;
 u64 available = size;

 arena = kzalloc(sizeof(struct arena_info), GFP_KERNEL);
 if (!arena)
  return ((void*)0);
 arena->nd_btt = btt->nd_btt;
 arena->sector_size = btt->sector_size;
 mutex_init(&arena->err_lock);

 if (!size)
  return arena;

 arena->size = size;
 arena->external_lba_start = start;
 arena->external_lbasize = btt->lbasize;
 arena->internal_lbasize = roundup(arena->external_lbasize,
     INT_LBASIZE_ALIGNMENT);
 arena->nfree = BTT_DEFAULT_NFREE;
 arena->version_major = btt->nd_btt->version_major;
 arena->version_minor = btt->nd_btt->version_minor;

 if (available % BTT_PG_SIZE)
  available -= (available % BTT_PG_SIZE);


 available -= 2 * BTT_PG_SIZE;


 logsize = roundup(arena->nfree * LOG_GRP_SIZE, BTT_PG_SIZE);
 available -= logsize;


 arena->internal_nlba = div_u64(available - BTT_PG_SIZE,
   arena->internal_lbasize + MAP_ENT_SIZE);
 arena->external_nlba = arena->internal_nlba - arena->nfree;

 mapsize = roundup((arena->external_nlba * MAP_ENT_SIZE), BTT_PG_SIZE);
 datasize = available - mapsize;


 arena->infooff = arena_off;
 arena->dataoff = arena->infooff + BTT_PG_SIZE;
 arena->mapoff = arena->dataoff + datasize;
 arena->logoff = arena->mapoff + mapsize;
 arena->info2off = arena->logoff + logsize;


 arena->log_index[0] = 0;
 arena->log_index[1] = 1;
 return arena;
}
