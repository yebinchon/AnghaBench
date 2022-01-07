
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum via_clksrc { ____Placeholder_via_clksrc } via_clksrc ;
__attribute__((used)) static inline u8 set_clock_source_common(enum via_clksrc source, bool use_pll)
{
 u8 data = 0;

 switch (source) {
 case 128:
  data = 0x00;
  break;
 case 129:
  data = 0x02;
  break;
 case 130:
  data = 0x04;
  break;
 case 131:
  data = 0x0A;
  break;
 case 133:
  data = 0xC;
  break;
 case 132:
  data = 0x0E;
  break;
 }

 if (!use_pll)
  data |= 1;

 return data;
}
