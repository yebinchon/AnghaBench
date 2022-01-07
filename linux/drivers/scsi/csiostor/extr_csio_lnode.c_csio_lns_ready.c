
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_lnode {int nport_id; int sm; TYPE_1__* fcfinfo; } ;
struct csio_hw {int lock; } ;
typedef enum csio_ln_ev { ____Placeholder_csio_ln_ev } csio_ln_ev ;
struct TYPE_2__ {int list; } ;


 int CSIO_DB_ASSERT (int ) ;
 int CSIO_INC_STATS (struct csio_lnode*,int ) ;





 int CSIO_LN_FC_LINKDOWN ;
 int CSIO_RNFE_CLOSE ;
 int CSIO_RNFE_DOWN ;
 int csio_is_phys_ln (struct csio_lnode*) ;
 int csio_ln_dbg (struct csio_lnode*,char*,int,int ) ;
 int csio_lnode_async_event (struct csio_lnode*,int ) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int csio_lns_offline ;
 int csio_lns_uninit ;
 int csio_post_event_rns (struct csio_lnode*,int ) ;
 int csio_set_state (int *,int ) ;
 int list_del_init (int *) ;
 int n_evt_drop ;
 int * n_evt_sm ;
 int n_evt_unexp ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
csio_lns_ready(struct csio_lnode *ln, enum csio_ln_ev evt)
{
 struct csio_hw *hw = csio_lnode_to_hw(ln);

 CSIO_INC_STATS(ln, n_evt_sm[evt]);
 switch (evt) {
 case 130:
  csio_ln_dbg(ln,
       "ignoring event %d recv from did x%x"
       "in ln state[ready].\n", evt, ln->nport_id);
  CSIO_INC_STATS(ln, n_evt_drop);
  break;

 case 129:
  csio_set_state(&ln->sm, csio_lns_offline);
  csio_post_event_rns(ln, CSIO_RNFE_DOWN);

  spin_unlock_irq(&hw->lock);
  csio_lnode_async_event(ln, CSIO_LN_FC_LINKDOWN);
  spin_lock_irq(&hw->lock);

  if (csio_is_phys_ln(ln)) {

   list_del_init(&ln->fcfinfo->list);
  }
  break;

 case 131:
  csio_set_state(&ln->sm, csio_lns_offline);
  csio_post_event_rns(ln, CSIO_RNFE_DOWN);




  spin_unlock_irq(&hw->lock);
  csio_lnode_async_event(ln, CSIO_LN_FC_LINKDOWN);
  spin_lock_irq(&hw->lock);

  if (csio_is_phys_ln(ln)) {

   list_del_init(&ln->fcfinfo->list);
  }
  break;

 case 132:
  csio_set_state(&ln->sm, csio_lns_uninit);
  csio_post_event_rns(ln, CSIO_RNFE_CLOSE);
  break;

 case 128:
  csio_set_state(&ln->sm, csio_lns_offline);
  csio_post_event_rns(ln, CSIO_RNFE_DOWN);
  break;

 default:
  csio_ln_dbg(ln,
       "unexp ln event %d recv from did:x%x in "
       "ln state[uninit].\n", evt, ln->nport_id);
  CSIO_INC_STATS(ln, n_evt_unexp);
  CSIO_DB_ASSERT(0);
  break;
 }
}
