
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_sge {int csio_fl_align; int * timer_val; int * counter_val; int sge_control; } ;
struct csio_wrm {struct csio_sge sge; } ;
struct csio_hw {int dummy; } ;


 int CSIO_SET_FLBUF_SIZE (struct csio_hw*,int,int ) ;
 int CSIO_SGE_DBFIFO_INT_THRESH ;
 int CSIO_SGE_FLBUF_SIZE1 ;
 int CSIO_SGE_FLBUF_SIZE2 ;
 int CSIO_SGE_FLBUF_SIZE3 ;
 int CSIO_SGE_FLBUF_SIZE4 ;
 int CSIO_SGE_FLBUF_SIZE5 ;
 int CSIO_SGE_FLBUF_SIZE6 ;
 int CSIO_SGE_FLBUF_SIZE7 ;
 int CSIO_SGE_FLBUF_SIZE8 ;
 int CSIO_SGE_FL_SIZE_REGS ;
 int CSIO_SGE_INT_CNT_VAL_0 ;
 int CSIO_SGE_INT_CNT_VAL_1 ;
 int CSIO_SGE_INT_CNT_VAL_2 ;
 int CSIO_SGE_INT_CNT_VAL_3 ;
 int CSIO_SGE_TIMER_VAL_0 ;
 int CSIO_SGE_TIMER_VAL_1 ;
 int CSIO_SGE_TIMER_VAL_2 ;
 int CSIO_SGE_TIMER_VAL_3 ;
 int CSIO_SGE_TIMER_VAL_4 ;
 int CSIO_SGE_TIMER_VAL_5 ;
 int ENABLE_DROP_F ;
 int HP_INT_THRESH_T5_V (int ) ;
 int LP_INT_THRESH_T5_M ;
 int LP_INT_THRESH_T5_V (int ) ;
 int RXPKTCPLMODE_F ;
 int SGE_CONTROL_A ;
 int SGE_DBFIFO_STATUS2_A ;
 int SGE_DBFIFO_STATUS_A ;
 int SGE_DOORBELL_CONTROL_A ;
 int SGE_FL_BUFFER_SIZE2_A ;
 int SGE_FL_BUFFER_SIZE3_A ;
 int SGE_INGRESS_RX_THRESHOLD_A ;
 int SGE_TIMER_VALUE_0_AND_1_A ;
 int SGE_TIMER_VALUE_2_AND_3_A ;
 int SGE_TIMER_VALUE_4_AND_5_A ;
 int THRESHOLD_0_V (int ) ;
 int THRESHOLD_1_V (int ) ;
 int THRESHOLD_2_V (int ) ;
 int THRESHOLD_3_V (int ) ;
 int TIMERVALUE0_V (int ) ;
 int TIMERVALUE1_V (int ) ;
 int TIMERVALUE2_V (int ) ;
 int TIMERVALUE3_V (int ) ;
 int TIMERVALUE4_V (int ) ;
 int TIMERVALUE5_V (int ) ;
 int csio_get_flbuf_size (struct csio_hw*,struct csio_sge*,int) ;
 struct csio_wrm* csio_hw_to_wrm (struct csio_hw*) ;
 int csio_init_intr_coalesce_parms (struct csio_hw*) ;
 int csio_rd_reg32 (struct csio_hw*,int ) ;
 int csio_set_reg_field (struct csio_hw*,int ,int ,int ) ;
 int csio_us_to_core_ticks (struct csio_hw*,int ) ;
 int csio_wr_reg32 (struct csio_hw*,int,int ) ;

__attribute__((used)) static void
csio_wr_set_sge(struct csio_hw *hw)
{
 struct csio_wrm *wrm = csio_hw_to_wrm(hw);
 struct csio_sge *sge = &wrm->sge;
 int i;





 csio_set_reg_field(hw, SGE_CONTROL_A, RXPKTCPLMODE_F, RXPKTCPLMODE_F);

 sge->sge_control = csio_rd_reg32(hw, SGE_CONTROL_A);







 csio_set_reg_field(hw, SGE_DBFIFO_STATUS_A,
      LP_INT_THRESH_T5_V(LP_INT_THRESH_T5_M),
      LP_INT_THRESH_T5_V(CSIO_SGE_DBFIFO_INT_THRESH));
 csio_set_reg_field(hw, SGE_DBFIFO_STATUS2_A,
      HP_INT_THRESH_T5_V(LP_INT_THRESH_T5_M),
      HP_INT_THRESH_T5_V(CSIO_SGE_DBFIFO_INT_THRESH));

 csio_set_reg_field(hw, SGE_DOORBELL_CONTROL_A, ENABLE_DROP_F,
      ENABLE_DROP_F);



 CSIO_SET_FLBUF_SIZE(hw, 1, CSIO_SGE_FLBUF_SIZE1);
 csio_wr_reg32(hw, (CSIO_SGE_FLBUF_SIZE2 + sge->csio_fl_align - 1)
        & ~(sge->csio_fl_align - 1), SGE_FL_BUFFER_SIZE2_A);
 csio_wr_reg32(hw, (CSIO_SGE_FLBUF_SIZE3 + sge->csio_fl_align - 1)
        & ~(sge->csio_fl_align - 1), SGE_FL_BUFFER_SIZE3_A);
 CSIO_SET_FLBUF_SIZE(hw, 4, CSIO_SGE_FLBUF_SIZE4);
 CSIO_SET_FLBUF_SIZE(hw, 5, CSIO_SGE_FLBUF_SIZE5);
 CSIO_SET_FLBUF_SIZE(hw, 6, CSIO_SGE_FLBUF_SIZE6);
 CSIO_SET_FLBUF_SIZE(hw, 7, CSIO_SGE_FLBUF_SIZE7);
 CSIO_SET_FLBUF_SIZE(hw, 8, CSIO_SGE_FLBUF_SIZE8);

 for (i = 0; i < CSIO_SGE_FL_SIZE_REGS; i++)
  csio_get_flbuf_size(hw, sge, i);


 sge->timer_val[0] = CSIO_SGE_TIMER_VAL_0;
 sge->timer_val[1] = CSIO_SGE_TIMER_VAL_1;
 sge->timer_val[2] = CSIO_SGE_TIMER_VAL_2;
 sge->timer_val[3] = CSIO_SGE_TIMER_VAL_3;
 sge->timer_val[4] = CSIO_SGE_TIMER_VAL_4;
 sge->timer_val[5] = CSIO_SGE_TIMER_VAL_5;

 sge->counter_val[0] = CSIO_SGE_INT_CNT_VAL_0;
 sge->counter_val[1] = CSIO_SGE_INT_CNT_VAL_1;
 sge->counter_val[2] = CSIO_SGE_INT_CNT_VAL_2;
 sge->counter_val[3] = CSIO_SGE_INT_CNT_VAL_3;

 csio_wr_reg32(hw, THRESHOLD_0_V(sge->counter_val[0]) |
        THRESHOLD_1_V(sge->counter_val[1]) |
        THRESHOLD_2_V(sge->counter_val[2]) |
        THRESHOLD_3_V(sge->counter_val[3]),
        SGE_INGRESS_RX_THRESHOLD_A);

 csio_wr_reg32(hw,
     TIMERVALUE0_V(csio_us_to_core_ticks(hw, sge->timer_val[0])) |
     TIMERVALUE1_V(csio_us_to_core_ticks(hw, sge->timer_val[1])),
     SGE_TIMER_VALUE_0_AND_1_A);

 csio_wr_reg32(hw,
     TIMERVALUE2_V(csio_us_to_core_ticks(hw, sge->timer_val[2])) |
     TIMERVALUE3_V(csio_us_to_core_ticks(hw, sge->timer_val[3])),
     SGE_TIMER_VALUE_2_AND_3_A);

 csio_wr_reg32(hw,
     TIMERVALUE4_V(csio_us_to_core_ticks(hw, sge->timer_val[4])) |
     TIMERVALUE5_V(csio_us_to_core_ticks(hw, sge->timer_val[5])),
     SGE_TIMER_VALUE_4_AND_5_A);

 csio_init_intr_coalesce_parms(hw);
}
