
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct buf_cache_t {TYPE_2__* hash_prev; TYPE_1__* hash_next; } ;
struct TYPE_4__ {TYPE_1__* hash_next; } ;
struct TYPE_3__ {TYPE_2__* hash_prev; } ;



__attribute__((used)) static void FAT_cache_remove_hash(struct buf_cache_t *bp)
{
 (bp->hash_prev)->hash_next = bp->hash_next;
 (bp->hash_next)->hash_prev = bp->hash_prev;
}
