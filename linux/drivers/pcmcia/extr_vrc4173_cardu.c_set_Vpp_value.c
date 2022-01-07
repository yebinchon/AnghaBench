
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;


 int VPP_0V ;
 int VPP_12V ;
 int VPP_VCC ;

__attribute__((used)) static inline uint8_t set_Vpp_value(u_char Vpp)
{
 switch (Vpp) {
 case 33:
 case 50:
  return VPP_VCC;
 case 120:
  return VPP_12V;
 }

 return VPP_0V;
}
