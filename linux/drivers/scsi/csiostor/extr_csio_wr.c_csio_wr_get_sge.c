
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef void* uint16_t ;
typedef void* u32 ;
struct csio_sge {int csio_fl_align; int * counter_val; void** timer_val; void* sge_control; } ;
struct csio_wrm {struct csio_sge sge; } ;
struct csio_hw {int dummy; } ;


 int CSIO_SGE_FL_SIZE_REGS ;
 int INGPADBOUNDARY_G (void*) ;
 int SGE_CONTROL_A ;
 int SGE_INGRESS_RX_THRESHOLD_A ;
 int SGE_TIMER_VALUE_0_AND_1_A ;
 int SGE_TIMER_VALUE_2_AND_3_A ;
 int SGE_TIMER_VALUE_4_AND_5_A ;
 int THRESHOLD_0_G (void*) ;
 int THRESHOLD_1_G (void*) ;
 int THRESHOLD_2_G (void*) ;
 int THRESHOLD_3_G (void*) ;
 int TIMERVALUE0_G (void*) ;
 int TIMERVALUE1_G (void*) ;
 int TIMERVALUE2_G (void*) ;
 int TIMERVALUE3_G (void*) ;
 int TIMERVALUE4_G (void*) ;
 int TIMERVALUE5_G (void*) ;
 scalar_t__ csio_core_ticks_to_us (struct csio_hw*,int ) ;
 int csio_get_flbuf_size (struct csio_hw*,struct csio_sge*,int) ;
 struct csio_wrm* csio_hw_to_wrm (struct csio_hw*) ;
 int csio_init_intr_coalesce_parms (struct csio_hw*) ;
 void* csio_rd_reg32 (struct csio_hw*,int ) ;

__attribute__((used)) static void
csio_wr_get_sge(struct csio_hw *hw)
{
 struct csio_wrm *wrm = csio_hw_to_wrm(hw);
 struct csio_sge *sge = &wrm->sge;
 uint32_t ingpad;
 int i;
 u32 timer_value_0_and_1, timer_value_2_and_3, timer_value_4_and_5;
 u32 ingress_rx_threshold;

 sge->sge_control = csio_rd_reg32(hw, SGE_CONTROL_A);

 ingpad = INGPADBOUNDARY_G(sge->sge_control);

 switch (ingpad) {
 case 131:
  sge->csio_fl_align = 32; break;
 case 128:
  sge->csio_fl_align = 64; break;
 case 134:
  sge->csio_fl_align = 128; break;
 case 132:
  sge->csio_fl_align = 256; break;
 case 129:
  sge->csio_fl_align = 512; break;
 case 135:
  sge->csio_fl_align = 1024; break;
 case 133:
  sge->csio_fl_align = 2048; break;
 case 130:
  sge->csio_fl_align = 4096; break;
 }

 for (i = 0; i < CSIO_SGE_FL_SIZE_REGS; i++)
  csio_get_flbuf_size(hw, sge, i);

 timer_value_0_and_1 = csio_rd_reg32(hw, SGE_TIMER_VALUE_0_AND_1_A);
 timer_value_2_and_3 = csio_rd_reg32(hw, SGE_TIMER_VALUE_2_AND_3_A);
 timer_value_4_and_5 = csio_rd_reg32(hw, SGE_TIMER_VALUE_4_AND_5_A);

 sge->timer_val[0] = (uint16_t)csio_core_ticks_to_us(hw,
     TIMERVALUE0_G(timer_value_0_and_1));
 sge->timer_val[1] = (uint16_t)csio_core_ticks_to_us(hw,
     TIMERVALUE1_G(timer_value_0_and_1));
 sge->timer_val[2] = (uint16_t)csio_core_ticks_to_us(hw,
     TIMERVALUE2_G(timer_value_2_and_3));
 sge->timer_val[3] = (uint16_t)csio_core_ticks_to_us(hw,
     TIMERVALUE3_G(timer_value_2_and_3));
 sge->timer_val[4] = (uint16_t)csio_core_ticks_to_us(hw,
     TIMERVALUE4_G(timer_value_4_and_5));
 sge->timer_val[5] = (uint16_t)csio_core_ticks_to_us(hw,
     TIMERVALUE5_G(timer_value_4_and_5));

 ingress_rx_threshold = csio_rd_reg32(hw, SGE_INGRESS_RX_THRESHOLD_A);
 sge->counter_val[0] = THRESHOLD_0_G(ingress_rx_threshold);
 sge->counter_val[1] = THRESHOLD_1_G(ingress_rx_threshold);
 sge->counter_val[2] = THRESHOLD_2_G(ingress_rx_threshold);
 sge->counter_val[3] = THRESHOLD_3_G(ingress_rx_threshold);

 csio_init_intr_coalesce_parms(hw);
}
