
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_lnode {int dummy; } ;
struct TYPE_2__ {void* vaddr; } ;
struct csio_ioreq {TYPE_1__ dma_buf; int wr_status; struct csio_lnode* lnode; } ;
struct csio_hw {int dummy; } ;


 int CSIO_INC_STATS (struct csio_lnode*,int ) ;
 scalar_t__ FC_FS_ACC ;
 int FW_SUCCESS ;
 int csio_ct_expl (void*) ;
 int csio_ct_reason (void*) ;
 int csio_ct_rsp (void*) ;
 int csio_ln_dbg (struct csio_lnode*,char*,int ,...) ;
 int n_fdmi_err ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void
csio_ln_fdmi_done(struct csio_hw *hw, struct csio_ioreq *fdmi_req)
{
 void *cmd;
 struct csio_lnode *ln = fdmi_req->lnode;

 if (fdmi_req->wr_status != FW_SUCCESS) {
  csio_ln_dbg(ln, "WR error:%x in processing fdmi rpa cmd\n",
       fdmi_req->wr_status);
  CSIO_INC_STATS(ln, n_fdmi_err);
 }

 cmd = fdmi_req->dma_buf.vaddr;
 if (ntohs(csio_ct_rsp(cmd)) != FC_FS_ACC) {
  csio_ln_dbg(ln, "fdmi rpa cmd rejected reason %x expl %x\n",
       csio_ct_reason(cmd), csio_ct_expl(cmd));
 }
}
