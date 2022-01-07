
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






__attribute__((used)) static const char *wl18xx_radar_type_decode(u8 radar_type)
{
 switch (radar_type) {
 case 128:
  return "REGULAR";
 case 130:
  return "CHIRP";
 case 129:
 default:
  return "N/A";
 }
}
