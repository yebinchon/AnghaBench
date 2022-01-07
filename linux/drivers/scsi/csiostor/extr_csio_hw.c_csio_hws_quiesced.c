
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int prev_evt; int cur_evt; int sm; } ;
typedef enum csio_hw_ev { ____Placeholder_csio_hw_ev } csio_hw_ev ;



 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int csio_hw_configure (struct csio_hw*) ;
 int csio_hws_configuring ;
 int csio_set_state (int *,int ) ;
 int * n_evt_sm ;
 int n_evt_unexp ;

__attribute__((used)) static void
csio_hws_quiesced(struct csio_hw *hw, enum csio_hw_ev evt)
{
 hw->prev_evt = hw->cur_evt;
 hw->cur_evt = evt;
 CSIO_INC_STATS(hw, n_evt_sm[evt]);

 switch (evt) {
 case 128:
  csio_set_state(&hw->sm, csio_hws_configuring);
  csio_hw_configure(hw);
  break;

 default:
  CSIO_INC_STATS(hw, n_evt_unexp);
  break;
 }
}
