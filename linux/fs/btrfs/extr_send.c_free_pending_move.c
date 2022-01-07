
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int pending_dir_moves; } ;
struct pending_dir_move {int update_refs; int node; int list; } ;


 int RB_EMPTY_NODE (int *) ;
 int __free_recorded_refs (int *) ;
 int kfree (struct pending_dir_move*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void free_pending_move(struct send_ctx *sctx, struct pending_dir_move *m)
{
 if (!list_empty(&m->list))
  list_del(&m->list);
 if (!RB_EMPTY_NODE(&m->node))
  rb_erase(&m->node, &sctx->pending_dir_moves);
 __free_recorded_refs(&m->update_refs);
 kfree(m);
}
