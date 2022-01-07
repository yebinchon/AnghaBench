
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct buf_cache_t {TYPE_2__* prev; TYPE_1__* next; } ;
struct TYPE_4__ {TYPE_1__* next; } ;
struct TYPE_3__ {TYPE_2__* prev; } ;


 int push_to_mru (struct buf_cache_t*,struct buf_cache_t*) ;

__attribute__((used)) static void move_to_mru(struct buf_cache_t *bp, struct buf_cache_t *list)
{
 bp->prev->next = bp->next;
 bp->next->prev = bp->prev;
 push_to_mru(bp, list);
}
