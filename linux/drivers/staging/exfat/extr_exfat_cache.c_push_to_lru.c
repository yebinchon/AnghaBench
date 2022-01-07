
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_cache_t {struct buf_cache_t* prev; struct buf_cache_t* next; } ;



__attribute__((used)) static void push_to_lru(struct buf_cache_t *bp, struct buf_cache_t *list)
{
 bp->prev = list->prev;
 bp->next = list;
 list->prev->next = bp;
 list->prev = bp;
}
