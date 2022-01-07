
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_rnode {int nport_id; int sm; int rdev_entry; } ;
struct csio_lnode {int dummy; } ;
typedef enum csio_rn_ev { ____Placeholder_csio_rn_ev } csio_rn_ev ;


 int CSIO_INC_STATS (struct csio_rnode*,int ) ;
 int __csio_reg_rnode (struct csio_rnode*) ;
 int __csio_unreg_rnode (struct csio_rnode*) ;
 int csio_ln_dbg (struct csio_lnode*,char*,int ,int,int ) ;
 int csio_rn_flowid (struct csio_rnode*) ;
 int csio_rn_verify_rparams (struct csio_lnode*,struct csio_rnode*,int ) ;
 struct csio_lnode* csio_rnode_to_lnode (struct csio_rnode*) ;
 int csio_rns_disappeared ;
 int csio_rns_offline ;
 int csio_rns_uninit ;
 int csio_set_state (int *,int ) ;
 int n_err_inval ;
 int n_evt_drop ;
 int * n_evt_sm ;
 int n_evt_unexp ;

__attribute__((used)) static void
csio_rns_ready(struct csio_rnode *rn, enum csio_rn_ev evt)
{
 struct csio_lnode *ln = csio_rnode_to_lnode(rn);
 int ret = 0;

 CSIO_INC_STATS(rn, n_evt_sm[evt]);

 switch (evt) {
 case 133:
 case 130:
  csio_ln_dbg(ln,
   "ssni:x%x Ignoring event %d recv from did:x%x "
   "in rn state[ready]\n", csio_rn_flowid(rn), evt,
   rn->nport_id);
  CSIO_INC_STATS(rn, n_evt_drop);
  break;

 case 129:
 case 128:
  ret = csio_rn_verify_rparams(ln, rn, rn->rdev_entry);
  if (!ret)
   __csio_reg_rnode(rn);
  else
   CSIO_INC_STATS(rn, n_err_inval);

  break;
 case 134:
  csio_set_state(&rn->sm, csio_rns_offline);
  __csio_unreg_rnode(rn);




  break;

 case 132:
  csio_set_state(&rn->sm, csio_rns_offline);

  __csio_unreg_rnode(rn);




  break;

 case 135:







  csio_set_state(&rn->sm, csio_rns_uninit);
  __csio_unreg_rnode(rn);
  break;

 case 131:
  csio_set_state(&rn->sm, csio_rns_disappeared);
  __csio_unreg_rnode(rn);






  break;

 default:
  csio_ln_dbg(ln,
   "ssni:x%x unexp event %d recv from did:x%x "
   "in rn state[uninit]\n", csio_rn_flowid(rn), evt,
   rn->nport_id);
  CSIO_INC_STATS(rn, n_evt_unexp);
  break;
 }
}
