
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 grf5101_rf_calc_rssi(u8 agc, u8 sq)
{
 if (agc > 60)
  return 65;


 return 65 * agc / 60;
}
