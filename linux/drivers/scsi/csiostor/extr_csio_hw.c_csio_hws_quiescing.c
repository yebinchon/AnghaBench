
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int prev_evt; int cur_evt; int sm; int evtflag; } ;
typedef enum csio_hw_ev { ____Placeholder_csio_hw_ev } csio_hw_ev ;




 int CSIO_HWE_HBA_RESET_DONE ;




 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int CSIO_LN_NOTIFY_HWREMOVE ;
 int CSIO_LN_NOTIFY_HWRESET ;
 int csio_do_bye (struct csio_hw*) ;
 int csio_do_reset (struct csio_hw*,int) ;
 int csio_hws_pcierr ;
 int csio_hws_quiesced ;
 int csio_hws_removing ;
 int csio_hws_resetting ;
 int csio_notify_lnodes (struct csio_hw*,int ) ;
 int csio_post_event (int *,int ) ;
 int csio_set_state (int *,int ) ;
 int csio_wr_destroy_queues (struct csio_hw*,int) ;
 int * n_evt_sm ;
 int n_evt_unexp ;

__attribute__((used)) static void
csio_hws_quiescing(struct csio_hw *hw, enum csio_hw_ev evt)
{
 hw->prev_evt = hw->cur_evt;
 hw->cur_evt = evt;
 CSIO_INC_STATS(hw, n_evt_sm[evt]);

 switch (evt) {
 case 129:
  switch (hw->evtflag) {
  case 133:
   csio_set_state(&hw->sm, csio_hws_resetting);



  case 132:
   csio_set_state(&hw->sm, csio_hws_resetting);

   csio_notify_lnodes(hw, CSIO_LN_NOTIFY_HWRESET);
   csio_wr_destroy_queues(hw, 0);
   csio_do_reset(hw, 0);
   csio_post_event(&hw->sm, CSIO_HWE_HBA_RESET_DONE);
   break;

  case 130:
   csio_set_state(&hw->sm, csio_hws_removing);
   csio_notify_lnodes(hw, CSIO_LN_NOTIFY_HWREMOVE);
   csio_wr_destroy_queues(hw, 1);

   csio_do_bye(hw);
   break;

  case 128:
   csio_set_state(&hw->sm, csio_hws_quiesced);
   break;

  case 131:
   csio_set_state(&hw->sm, csio_hws_pcierr);
   csio_wr_destroy_queues(hw, 0);
   break;

  default:
   CSIO_INC_STATS(hw, n_evt_unexp);
   break;

  }
  break;

 default:
  CSIO_INC_STATS(hw, n_evt_unexp);
  break;
 }
}
