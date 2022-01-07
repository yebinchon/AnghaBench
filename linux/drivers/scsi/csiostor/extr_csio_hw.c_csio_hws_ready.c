
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int evtflag; int prev_evt; int cur_evt; int sm; } ;
typedef enum csio_hw_ev { ____Placeholder_csio_hw_ev } csio_hw_ev ;







 int CSIO_HWE_QUIESCED ;

 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int CSIO_LN_NOTIFY_HWSTOP ;
 int csio_evtq_flush (struct csio_hw*) ;
 int csio_evtq_stop (struct csio_hw*) ;
 int csio_hw_intr_disable (struct csio_hw*) ;
 int csio_hw_mbm_cleanup (struct csio_hw*) ;
 int csio_hw_to_mgmtm (struct csio_hw*) ;
 int csio_hw_to_scsim (struct csio_hw*) ;
 int csio_hws_quiescing ;
 int csio_hws_uninit ;
 int csio_mgmtm_cleanup (int ) ;
 int csio_notify_lnodes (struct csio_hw*,int ) ;
 int csio_post_event (int *,int ) ;
 int csio_scsim_cleanup_io (int ,int) ;
 int csio_set_state (int *,int ) ;
 int * n_evt_sm ;
 int n_evt_unexp ;

__attribute__((used)) static void
csio_hws_ready(struct csio_hw *hw, enum csio_hw_ev evt)
{

 hw->evtflag = evt;

 hw->prev_evt = hw->cur_evt;
 hw->cur_evt = evt;
 CSIO_INC_STATS(hw, n_evt_sm[evt]);

 switch (evt) {
 case 131:
 case 132:
 case 128:
 case 129:
 case 130:
  csio_set_state(&hw->sm, csio_hws_quiescing);

  if (evt == 131 ||
      evt == 130)
   csio_scsim_cleanup_io(csio_hw_to_scsim(hw), 0);
  else
   csio_scsim_cleanup_io(csio_hw_to_scsim(hw), 1);

  csio_hw_intr_disable(hw);
  csio_hw_mbm_cleanup(hw);
  csio_evtq_stop(hw);
  csio_notify_lnodes(hw, CSIO_LN_NOTIFY_HWSTOP);
  csio_evtq_flush(hw);
  csio_mgmtm_cleanup(csio_hw_to_mgmtm(hw));
  csio_post_event(&hw->sm, CSIO_HWE_QUIESCED);
  break;

 case 133:
  csio_set_state(&hw->sm, csio_hws_uninit);
  break;

 default:
  CSIO_INC_STATS(hw, n_evt_unexp);
  break;
 }
}
