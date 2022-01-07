
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum qe_clock { ____Placeholder_qe_clock } qe_clock ;


 int EINVAL ;
__attribute__((used)) static int ucc_get_tdm_rx_clk(u32 tdm_num, enum qe_clock clock)
{
 int clock_bits = -EINVAL;

 switch (tdm_num) {
 case 0:
  switch (clock) {
  case 132:
   clock_bits = 6;
   break;
  case 129:
   clock_bits = 7;
   break;
  default:
   break;
  }
  break;
 case 1:
  switch (clock) {
  case 131:
   clock_bits = 6;
   break;
  case 143:
   clock_bits = 7;
   break;
  default:
   break;
  }
  break;
 case 2:
  switch (clock) {
  case 130:
   clock_bits = 6;
   break;
  case 141:
   clock_bits = 7;
   break;
  default:
   break;
  }
  break;
 case 3:
  switch (clock) {
  case 128:
   clock_bits = 6;
   break;
  case 139:
   clock_bits = 7;
   break;
  default:
   break;
  }
  break;
 case 4:
  switch (clock) {
  case 142:
   clock_bits = 6;
   break;
  case 137:
   clock_bits = 7;
   break;
  default:
   break;
  }
  break;
 case 5:
  switch (clock) {
  case 140:
   clock_bits = 6;
   break;
  case 135:
   clock_bits = 7;
   break;
  default:
   break;
  }
  break;
 case 6:
  switch (clock) {
  case 138:
   clock_bits = 6;
   break;
  case 134:
   clock_bits = 7;
   break;
  default:
   break;
  }
  break;
 case 7:
  switch (clock) {
  case 136:
   clock_bits = 6;
   break;
  case 133:
   clock_bits = 7;
   break;
  default:
   break;
  }
  break;
 }

 return clock_bits;
}
