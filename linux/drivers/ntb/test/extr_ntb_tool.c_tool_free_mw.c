
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tool_mw {int * dbgfs_file; scalar_t__ size; scalar_t__ dma_base; int * mm_base; } ;
struct tool_ctx {TYPE_2__* ntb; TYPE_1__* peers; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct tool_mw* inmws; } ;


 int debugfs_remove (int *) ;
 int dma_free_coherent (int *,scalar_t__,int *,scalar_t__) ;
 int ntb_mw_clear_trans (TYPE_2__*,int,int) ;

__attribute__((used)) static void tool_free_mw(struct tool_ctx *tc, int pidx, int widx)
{
 struct tool_mw *inmw = &tc->peers[pidx].inmws[widx];

 debugfs_remove(inmw->dbgfs_file);

 if (inmw->mm_base != ((void*)0)) {
  ntb_mw_clear_trans(tc->ntb, pidx, widx);
  dma_free_coherent(&tc->ntb->dev, inmw->size,
      inmw->mm_base, inmw->dma_base);
 }

 inmw->mm_base = ((void*)0);
 inmw->dma_base = 0;
 inmw->size = 0;
 inmw->dbgfs_file = ((void*)0);
}
