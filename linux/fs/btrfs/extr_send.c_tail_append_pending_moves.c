
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int pending_dir_moves; } ;
struct pending_dir_move {int node; int list; } ;
struct list_head {int dummy; } ;


 int LIST_HEAD (int ) ;
 int RB_CLEAR_NODE (int *) ;
 int RB_EMPTY_NODE (int *) ;
 int list ;
 int list_add_tail (int *,struct list_head*) ;
 scalar_t__ list_empty (int *) ;
 int list_splice_init (int *,int *) ;
 int list_splice_tail (int *,struct list_head*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void tail_append_pending_moves(struct send_ctx *sctx,
          struct pending_dir_move *moves,
          struct list_head *stack)
{
 if (list_empty(&moves->list)) {
  list_add_tail(&moves->list, stack);
 } else {
  LIST_HEAD(list);
  list_splice_init(&moves->list, &list);
  list_add_tail(&moves->list, stack);
  list_splice_tail(&list, stack);
 }
 if (!RB_EMPTY_NODE(&moves->node)) {
  rb_erase(&moves->node, &sctx->pending_dir_moves);
  RB_CLEAR_NODE(&moves->node);
 }
}
