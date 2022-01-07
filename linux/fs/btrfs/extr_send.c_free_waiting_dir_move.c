
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waiting_dir_move {int node; } ;
struct send_ctx {int waiting_dir_moves; } ;


 int kfree (struct waiting_dir_move*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void free_waiting_dir_move(struct send_ctx *sctx,
      struct waiting_dir_move *dm)
{
 if (!dm)
  return;
 rb_erase(&dm->node, &sctx->waiting_dir_moves);
 kfree(dm);
}
