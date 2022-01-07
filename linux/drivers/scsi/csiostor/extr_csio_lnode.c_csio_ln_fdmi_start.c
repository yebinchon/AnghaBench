
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fc_fdmi_hba_identifier {int id; } ;
struct csio_rnode {int dummy; } ;
struct csio_lnode {int flags; struct csio_ioreq* mgmt_req; } ;
struct TYPE_2__ {void* vaddr; } ;
struct csio_ioreq {TYPE_1__ dma_buf; struct csio_rnode* rnode; struct csio_lnode* lnode; } ;


 int CSIO_INC_STATS (struct csio_lnode*,int ) ;
 int CSIO_LNF_FDMI_ENABLE ;
 int EPROTONOSUPPORT ;
 int FCOE_CT ;
 int FC_CT_HDR_LEN ;
 int FC_FDMI_DHBA ;
 int FC_FDMI_SUBTYPE ;
 int FC_FST_MGMT ;
 scalar_t__ csio_ct_get_pld (void*) ;
 int csio_fill_ct_iu (void*,int ,int ,int ) ;
 int csio_is_rnode_ready (struct csio_rnode*) ;
 int csio_ln_dbg (struct csio_lnode*,char*) ;
 int csio_ln_fdmi_dhba_cbfn ;
 scalar_t__ csio_ln_mgmt_submit_req (struct csio_ioreq*,int ,int ,TYPE_1__*,int) ;
 int csio_ln_wwpn (struct csio_lnode*) ;
 int memcpy (int *,int ,int) ;
 int memset (void*,int ,int) ;
 int n_fdmi_err ;

int
csio_ln_fdmi_start(struct csio_lnode *ln, void *context)
{
 struct csio_ioreq *fdmi_req;
 struct csio_rnode *fdmi_rn = (struct csio_rnode *)context;
 void *cmd;
 struct fc_fdmi_hba_identifier *hbaid;
 uint32_t len;

 if (!(ln->flags & CSIO_LNF_FDMI_ENABLE))
  return -EPROTONOSUPPORT;

 if (!csio_is_rnode_ready(fdmi_rn))
  CSIO_INC_STATS(ln, n_fdmi_err);





 fdmi_req = ln->mgmt_req;
 fdmi_req->lnode = ln;
 fdmi_req->rnode = fdmi_rn;


 cmd = fdmi_req->dma_buf.vaddr;
 memset(cmd, 0, FC_CT_HDR_LEN);
 csio_fill_ct_iu(cmd, FC_FST_MGMT, FC_FDMI_SUBTYPE, FC_FDMI_DHBA);
 len = FC_CT_HDR_LEN;

 hbaid = (struct fc_fdmi_hba_identifier *)csio_ct_get_pld(cmd);
 memcpy(&hbaid->id, csio_ln_wwpn(ln), 8);
 len += sizeof(*hbaid);


 if (csio_ln_mgmt_submit_req(fdmi_req, csio_ln_fdmi_dhba_cbfn,
     FCOE_CT, &fdmi_req->dma_buf, len)) {
  CSIO_INC_STATS(ln, n_fdmi_err);
  csio_ln_dbg(ln, "Failed to issue fdmi dhba req\n");
 }

 return 0;
}
