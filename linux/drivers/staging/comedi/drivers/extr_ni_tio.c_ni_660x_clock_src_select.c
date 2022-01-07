
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {unsigned int counter_index; } ;


 int EINVAL ;
 unsigned int GI_BITS_TO_SRC (int ) ;
 int NITIO_INPUT_SEL_REG (unsigned int) ;

 unsigned int NI_660X_MAX_RTSI_CHAN ;
 unsigned int NI_660X_MAX_SRC_PIN ;


 unsigned int NI_660X_RTSI_CLK (unsigned int) ;
 unsigned int NI_660X_SRC_PIN_CLK (unsigned int) ;




 unsigned int NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_NEXT_TC_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_RTSI_CLOCK_SRC_BITS (unsigned int) ;
 unsigned int NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS (unsigned int) ;
 unsigned int NI_GPCT_SOURCE_PIN_i_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS ;
 unsigned int ni_tio_clock_src_modifiers (struct ni_gpct const*) ;
 int ni_tio_get_soft_copy (struct ni_gpct const*,int ) ;

__attribute__((used)) static int ni_660x_clock_src_select(const struct ni_gpct *counter,
        unsigned int *clk_src)
{
 unsigned int clock_source = 0;
 unsigned int cidx = counter->counter_index;
 unsigned int src;
 unsigned int i;

 src = GI_BITS_TO_SRC(ni_tio_get_soft_copy(counter,
        NITIO_INPUT_SEL_REG(cidx)));

 switch (src) {
 case 130:
  clock_source = NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS;
  break;
 case 129:
  clock_source = NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS;
  break;
 case 128:
  clock_source = NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS;
  break;
 case 134:
  clock_source = NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS;
  break;
 case 131:
  clock_source = NI_GPCT_SOURCE_PIN_i_CLOCK_SRC_BITS;
  break;
 case 133:
  clock_source = NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS;
  break;
 case 132:
  clock_source = NI_GPCT_NEXT_TC_CLOCK_SRC_BITS;
  break;
 default:
  for (i = 0; i <= NI_660X_MAX_RTSI_CHAN; ++i) {
   if (src == NI_660X_RTSI_CLK(i)) {
    clock_source = NI_GPCT_RTSI_CLOCK_SRC_BITS(i);
    break;
   }
  }
  if (i <= NI_660X_MAX_RTSI_CHAN)
   break;
  for (i = 0; i <= NI_660X_MAX_SRC_PIN; ++i) {
   if (src == NI_660X_SRC_PIN_CLK(i)) {
    clock_source =
        NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS(i);
    break;
   }
  }
  if (i <= NI_660X_MAX_SRC_PIN)
   break;
  return -EINVAL;
 }
 clock_source |= ni_tio_clock_src_modifiers(counter);
 *clk_src = clock_source;
 return 0;
}
