
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct csio_rnode {size_t prev_evt; size_t cur_evt; int sm; } ;
struct csio_lnode {int dummy; } ;
typedef enum csio_rn_ev { ____Placeholder_csio_rn_ev } csio_rn_ev ;


 int CSIO_FWE_TO_RNFE (size_t) ;
 int CSIO_INC_STATS (struct csio_rnode*,int ) ;
 scalar_t__ csio_is_rnode_uninit (struct csio_rnode*) ;
 int csio_ln_err (struct csio_lnode*,char*,int ,size_t) ;
 int csio_post_event (int *,int) ;
 int csio_put_rnode (struct csio_lnode*,struct csio_rnode*) ;
 int csio_rn_flowid (struct csio_rnode*) ;
 struct csio_lnode* csio_rnode_to_lnode (struct csio_rnode*) ;
 int * n_evt_fw ;
 int n_evt_unexp ;

void
csio_rnode_fwevt_handler(struct csio_rnode *rn, uint8_t fwevt)
{
 struct csio_lnode *ln = csio_rnode_to_lnode(rn);
 enum csio_rn_ev evt;

 evt = CSIO_FWE_TO_RNFE(fwevt);
 if (!evt) {
  csio_ln_err(ln, "ssni:x%x Unhandled FW Rdev event: %d\n",
       csio_rn_flowid(rn), fwevt);
  CSIO_INC_STATS(rn, n_evt_unexp);
  return;
 }
 CSIO_INC_STATS(rn, n_evt_fw[fwevt]);


 rn->prev_evt = rn->cur_evt;
 rn->cur_evt = fwevt;


 csio_post_event(&rn->sm, evt);


 if (csio_is_rnode_uninit(rn))
  csio_put_rnode(ln, rn);
}
