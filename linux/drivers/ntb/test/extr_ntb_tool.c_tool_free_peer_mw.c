
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_mw {int pidx; int * dbgfs_file; scalar_t__ size; scalar_t__ tr_base; int * io_base; } ;
struct tool_ctx {int ntb; struct tool_mw* outmws; } ;


 int debugfs_remove (int *) ;
 int iounmap (int *) ;
 int ntb_peer_mw_clear_trans (int ,int,int) ;

__attribute__((used)) static void tool_free_peer_mw(struct tool_ctx *tc, int widx)
{
 struct tool_mw *outmw = &tc->outmws[widx];

 debugfs_remove(outmw->dbgfs_file);

 if (outmw->io_base != ((void*)0)) {
  iounmap(tc->outmws[widx].io_base);
  ntb_peer_mw_clear_trans(tc->ntb, outmw->pidx, widx);
 }

 outmw->io_base = ((void*)0);
 outmw->tr_base = 0;
 outmw->size = 0;
 outmw->pidx = -1;
 outmw->dbgfs_file = ((void*)0);
}
