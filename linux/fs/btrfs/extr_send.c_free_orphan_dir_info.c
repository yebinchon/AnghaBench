
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int orphan_dirs; } ;
struct orphan_dir_info {int node; } ;


 int kfree (struct orphan_dir_info*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void free_orphan_dir_info(struct send_ctx *sctx,
     struct orphan_dir_info *odi)
{
 if (!odi)
  return;
 rb_erase(&odi->node, &sctx->orphan_dirs);
 kfree(odi);
}
