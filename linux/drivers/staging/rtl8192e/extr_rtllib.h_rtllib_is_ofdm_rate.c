
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RTLLIB_BASIC_RATE_MASK ;
__attribute__((used)) static inline int rtllib_is_ofdm_rate(u8 rate)
{
 switch (rate & ~RTLLIB_BASIC_RATE_MASK) {
 case 129:
 case 128:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
  return 1;
 }
 return 0;
}
