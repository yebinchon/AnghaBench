
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_lnode {int nport_id; int fcf_lsthead; TYPE_1__* fcfinfo; int sm; } ;
struct csio_hw {struct csio_lnode* rln; } ;
typedef enum csio_ln_ev { ____Placeholder_csio_ln_ev } csio_ln_ev ;
struct TYPE_2__ {int list; } ;


 int CSIO_INC_STATS (struct csio_lnode*,int ) ;


 int csio_is_phys_ln (struct csio_lnode*) ;
 int csio_ln_dbg (struct csio_lnode*,char*,int,int ) ;
 int csio_ln_read_fcf_cbfn ;
 int csio_ln_read_fcf_entry (struct csio_lnode*,int ) ;
 int csio_ln_vnp_read (struct csio_lnode*,int ) ;
 int csio_ln_vnp_read_cbfn ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int csio_lns_online ;
 int csio_set_state (int *,int ) ;
 int list_add_tail (int *,int *) ;
 int n_err ;
 int * n_evt_sm ;
 int n_evt_unexp ;

__attribute__((used)) static void
csio_lns_uninit(struct csio_lnode *ln, enum csio_ln_ev evt)
{
 struct csio_hw *hw = csio_lnode_to_hw(ln);
 struct csio_lnode *rln = hw->rln;
 int rv;

 CSIO_INC_STATS(ln, n_evt_sm[evt]);
 switch (evt) {
 case 128:
  csio_set_state(&ln->sm, csio_lns_online);

  if (csio_is_phys_ln(ln)) {
   rv = csio_ln_read_fcf_entry(ln,
     csio_ln_read_fcf_cbfn);
   if (rv != 0) {

    CSIO_INC_STATS(ln, n_err);
    break;
   }


   list_add_tail(&ln->fcfinfo->list, &rln->fcf_lsthead);
  }

  rv = csio_ln_vnp_read(ln, csio_ln_vnp_read_cbfn);
  if (rv != 0) {

   CSIO_INC_STATS(ln, n_err);
  }
  break;

 case 129:
  break;

 default:
  csio_ln_dbg(ln,
       "unexp ln event %d recv from did:x%x in "
       "ln state[uninit].\n", evt, ln->nport_id);
  CSIO_INC_STATS(ln, n_evt_unexp);
  break;
 }
}
