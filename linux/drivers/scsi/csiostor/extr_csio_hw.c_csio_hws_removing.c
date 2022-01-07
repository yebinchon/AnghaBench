
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int prev_evt; int cur_evt; } ;
typedef enum csio_hw_ev { ____Placeholder_csio_hw_ev } csio_hw_ev ;



 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int PIORSTMODE_F ;
 int PIORST_F ;
 int PL_RST_A ;
 int csio_err (struct csio_hw*,char*) ;
 int csio_is_hw_master (struct csio_hw*) ;
 int csio_wr_reg32 (struct csio_hw*,int,int ) ;
 int mdelay (int) ;
 int * n_evt_sm ;
 int n_evt_unexp ;

__attribute__((used)) static void
csio_hws_removing(struct csio_hw *hw, enum csio_hw_ev evt)
{
 hw->prev_evt = hw->cur_evt;
 hw->cur_evt = evt;
 CSIO_INC_STATS(hw, n_evt_sm[evt]);

 switch (evt) {
 case 128:
  if (!csio_is_hw_master(hw))
   break;





  csio_err(hw, "Resetting HW and waiting 2 seconds...\n");
  csio_wr_reg32(hw, PIORSTMODE_F | PIORST_F, PL_RST_A);
  mdelay(2000);
  break;


 default:
  CSIO_INC_STATS(hw, n_evt_unexp);
  break;

 }
}
