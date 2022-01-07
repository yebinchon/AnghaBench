
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_cache_t {struct buf_cache_t* next; struct buf_cache_t* prev; } ;



__attribute__((used)) static void push_to_mru(struct buf_cache_t *bp, struct buf_cache_t *list)
{
 bp->next = list->next;
 bp->prev = list;
 list->next->prev = bp;
 list->next = bp;
}
