
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;


 int VCC_0V ;
 int VCC_3V ;
 int VCC_5V ;

__attribute__((used)) static inline uint8_t set_Vcc_value(u_char Vcc)
{
 switch (Vcc) {
 case 33:
  return VCC_3V;
 case 50:
  return VCC_5V;
 }

 return VCC_0V;
}
