
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct tool_mw {size_t size; int pidx; int dbgfs_file; int tr_base; int * io_base; } ;
struct tool_ctx {int ntb; TYPE_1__* peers; struct tool_mw* outmws; } ;
typedef int resource_size_t ;
typedef int phys_addr_t ;
typedef int buf ;
struct TYPE_2__ {int dbgfs_dir; } ;


 int EFAULT ;
 int TOOL_BUF_LEN ;
 int debugfs_create_file (char*,int,int ,struct tool_mw*,int *) ;
 int * ioremap_wc (int ,int ) ;
 int ntb_peer_mw_clear_trans (int ,int,int) ;
 int ntb_peer_mw_get_addr (int ,int,int *,int *) ;
 int ntb_peer_mw_set_trans (int ,int,int,int ,size_t) ;
 int snprintf (char*,int,char*,int) ;
 int tool_peer_mw_fops ;

__attribute__((used)) static int tool_setup_peer_mw(struct tool_ctx *tc, int pidx, int widx,
         u64 req_addr, size_t req_size)
{
 struct tool_mw *outmw = &tc->outmws[widx];
 resource_size_t map_size;
 phys_addr_t map_base;
 char buf[TOOL_BUF_LEN];
 int ret;

 if (outmw->io_base != ((void*)0))
  return 0;

 ret = ntb_peer_mw_get_addr(tc->ntb, widx, &map_base, &map_size);
 if (ret)
  return ret;

 ret = ntb_peer_mw_set_trans(tc->ntb, pidx, widx, req_addr, req_size);
 if (ret)
  return ret;

 outmw->io_base = ioremap_wc(map_base, map_size);
 if (outmw->io_base == ((void*)0)) {
  ret = -EFAULT;
  goto err_clear_trans;
 }

 outmw->tr_base = req_addr;
 outmw->size = req_size;
 outmw->pidx = pidx;

 snprintf(buf, sizeof(buf), "peer_mw%d", widx);
 outmw->dbgfs_file = debugfs_create_file(buf, 0600,
            tc->peers[pidx].dbgfs_dir, outmw,
            &tool_peer_mw_fops);

 return 0;

err_clear_trans:
 ntb_peer_mw_clear_trans(tc->ntb, pidx, widx);

 return ret;
}
