
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_lnode {int nport_id; TYPE_1__* fcfinfo; int sm; int portid; } ;
struct csio_hw {int lock; } ;
typedef enum csio_ln_ev { ____Placeholder_csio_ln_ev } csio_ln_ev ;
struct TYPE_2__ {int list; } ;


 int CSIO_INC_STATS (struct csio_lnode*,int ) ;




 int CSIO_LN_FC_LINKUP ;
 int csio_is_phys_ln (struct csio_lnode*) ;
 int csio_ln_dbg (struct csio_lnode*,char*,int,int ) ;
 int csio_ln_warn (struct csio_lnode*,char*,int ) ;
 int csio_lnode_async_event (struct csio_lnode*,int ) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int csio_lns_ready ;
 int csio_lns_uninit ;
 int csio_set_state (int *,int ) ;
 int list_del_init (int *) ;
 int n_evt_drop ;
 int * n_evt_sm ;
 int n_evt_unexp ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
csio_lns_online(struct csio_lnode *ln, enum csio_ln_ev evt)
{
 struct csio_hw *hw = csio_lnode_to_hw(ln);

 CSIO_INC_STATS(ln, n_evt_sm[evt]);
 switch (evt) {
 case 129:
  csio_ln_warn(ln,
        "warn: FCOE link is up already "
        "Ignoring linkup on port:%d\n", ln->portid);
  CSIO_INC_STATS(ln, n_evt_drop);
  break;

 case 130:
  csio_set_state(&ln->sm, csio_lns_ready);

  spin_unlock_irq(&hw->lock);
  csio_lnode_async_event(ln, CSIO_LN_FC_LINKUP);
  spin_lock_irq(&hw->lock);

  break;

 case 128:

 case 131:
  csio_set_state(&ln->sm, csio_lns_uninit);
  if (csio_is_phys_ln(ln)) {

   list_del_init(&ln->fcfinfo->list);
  }
  break;

 default:
  csio_ln_dbg(ln,
       "unexp ln event %d recv from did:x%x in "
       "ln state[uninit].\n", evt, ln->nport_id);
  CSIO_INC_STATS(ln, n_evt_unexp);

  break;
 }
}
