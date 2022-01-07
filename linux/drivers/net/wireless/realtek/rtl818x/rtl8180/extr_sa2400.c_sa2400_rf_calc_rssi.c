
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* sa2400_rf_rssi_map ;

__attribute__((used)) static u8 sa2400_rf_calc_rssi(u8 agc, u8 sq)
{
 if (sq == 0x80)
  return 1;

 if (sq > 78)
  return 32;


 return 65 * sa2400_rf_rssi_map[sq] / 100;
}
