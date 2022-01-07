
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum qe_clock { ____Placeholder_qe_clock } qe_clock ;


 int EINVAL ;
__attribute__((used)) static int ucc_get_tdm_common_clk(u32 tdm_num, enum qe_clock clock)
{
 int clock_bits = -EINVAL;







 switch (tdm_num) {
 case 0:
 case 1:
 case 2:
 case 3:
  switch (clock) {
  case 133:
   clock_bits = 1;
   break;
  case 132:
   clock_bits = 2;
   break;
  case 131:
   clock_bits = 4;
   break;
  case 130:
   clock_bits = 5;
   break;
  default:
   break;
  }
  break;
 case 4:
 case 5:
 case 6:
 case 7:
  switch (clock) {
  case 135:
   clock_bits = 1;
   break;
  case 134:
   clock_bits = 2;
   break;
  case 129:
   clock_bits = 4;
   break;
  case 128:
   clock_bits = 5;
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }

 return clock_bits;
}
