
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int n_active; } ;
struct csio_mgmtm {TYPE_2__ stats; int active_q; int iq_idx; int eq_idx; } ;
struct TYPE_3__ {int sm_list; } ;
struct csio_ioreq {void (* io_cbfn ) (struct csio_hw*,struct csio_ioreq*) ;uintptr_t fw_handle; TYPE_1__ sm; int iq_idx; int eq_idx; int lnode; } ;
struct csio_hw {int dummy; } ;
struct csio_dma_buf {int len; } ;
typedef enum fcoe_cmn_type { ____Placeholder_fcoe_cmn_type } fcoe_cmn_type ;


 int BUG_ON (int) ;
 struct csio_mgmtm* csio_hw_to_mgmtm (struct csio_hw*) ;
 int csio_ln_mgmt_submit_wr (struct csio_mgmtm*,struct csio_ioreq*,int,struct csio_dma_buf*,int ) ;
 struct csio_hw* csio_lnode_to_hw (int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int
csio_ln_mgmt_submit_req(struct csio_ioreq *io_req,
  void (*io_cbfn) (struct csio_hw *, struct csio_ioreq *),
  enum fcoe_cmn_type req_type, struct csio_dma_buf *pld,
  uint32_t pld_len)
{
 struct csio_hw *hw = csio_lnode_to_hw(io_req->lnode);
 struct csio_mgmtm *mgmtm = csio_hw_to_mgmtm(hw);
 int rv;

 BUG_ON(pld_len > pld->len);

 io_req->io_cbfn = io_cbfn;
 io_req->fw_handle = (uintptr_t) (io_req);
 io_req->eq_idx = mgmtm->eq_idx;
 io_req->iq_idx = mgmtm->iq_idx;

 rv = csio_ln_mgmt_submit_wr(mgmtm, io_req, req_type, pld, pld_len);
 if (rv == 0) {
  list_add_tail(&io_req->sm.sm_list, &mgmtm->active_q);
  mgmtm->stats.n_active++;
 }
 return rv;
}
