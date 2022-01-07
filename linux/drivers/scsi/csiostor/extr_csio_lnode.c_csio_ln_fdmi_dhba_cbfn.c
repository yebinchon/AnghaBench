
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fc_fdmi_port_name {int portname; } ;
struct csio_lnode {int dummy; } ;
struct TYPE_2__ {void* vaddr; } ;
struct csio_ioreq {TYPE_1__ dma_buf; int rnode; int wr_status; struct csio_lnode* lnode; } ;
struct csio_hw {int lock; } ;


 int CSIO_INC_STATS (struct csio_lnode*,int ) ;
 int FCOE_CT ;
 int FC_CT_HDR_LEN ;
 int FC_FDMI_DPRT ;
 int FC_FDMI_SUBTYPE ;
 int FC_FST_MGMT ;
 scalar_t__ FC_FS_ACC ;
 int FW_SUCCESS ;
 int csio_ct_expl (void*) ;
 scalar_t__ csio_ct_get_pld (void*) ;
 int csio_ct_reason (void*) ;
 int csio_ct_rsp (void*) ;
 int csio_fill_ct_iu (void*,int ,int ,int ) ;
 int csio_is_rnode_ready (int ) ;
 int csio_ln_dbg (struct csio_lnode*,char*,...) ;
 int csio_ln_fdmi_dprt_cbfn ;
 scalar_t__ csio_ln_mgmt_submit_req (struct csio_ioreq*,int ,int ,TYPE_1__*,int) ;
 int csio_ln_wwpn (struct csio_lnode*) ;
 int memcpy (int *,int ,int) ;
 int memset (void*,int ,int) ;
 int n_fdmi_err ;
 scalar_t__ ntohs (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
csio_ln_fdmi_dhba_cbfn(struct csio_hw *hw, struct csio_ioreq *fdmi_req)
{
 struct csio_lnode *ln = fdmi_req->lnode;
 void *cmd;
 struct fc_fdmi_port_name *port_name;
 uint32_t len;

 if (fdmi_req->wr_status != FW_SUCCESS) {
  csio_ln_dbg(ln, "WR error:%x in processing fdmi dhba cmd\n",
       fdmi_req->wr_status);
  CSIO_INC_STATS(ln, n_fdmi_err);
 }

 if (!csio_is_rnode_ready(fdmi_req->rnode)) {
  CSIO_INC_STATS(ln, n_fdmi_err);
  return;
 }
 cmd = fdmi_req->dma_buf.vaddr;
 if (ntohs(csio_ct_rsp(cmd)) != FC_FS_ACC) {
  csio_ln_dbg(ln, "fdmi dhba cmd rejected reason %x expl %x\n",
       csio_ct_reason(cmd), csio_ct_expl(cmd));
 }






 memset(cmd, 0, FC_CT_HDR_LEN);
 csio_fill_ct_iu(cmd, FC_FST_MGMT, FC_FDMI_SUBTYPE, FC_FDMI_DPRT);
 len = FC_CT_HDR_LEN;
 port_name = (struct fc_fdmi_port_name *)csio_ct_get_pld(cmd);
 memcpy(&port_name->portname, csio_ln_wwpn(ln), 8);
 len += sizeof(*port_name);


 spin_lock_irq(&hw->lock);
 if (csio_ln_mgmt_submit_req(fdmi_req, csio_ln_fdmi_dprt_cbfn,
    FCOE_CT, &fdmi_req->dma_buf, len)) {
  CSIO_INC_STATS(ln, n_fdmi_err);
  csio_ln_dbg(ln, "Failed to issue fdmi dprt req\n");
 }
 spin_unlock_irq(&hw->lock);
}
