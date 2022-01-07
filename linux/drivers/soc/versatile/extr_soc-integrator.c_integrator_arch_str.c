
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static const char *integrator_arch_str(u32 id)
{
 switch ((id >> 16) & 0xff) {
 case 0x00:
  return "ASB little-endian";
 case 0x01:
  return "AHB little-endian";
 case 0x03:
  return "AHB-Lite system bus, bi-endian";
 case 0x04:
  return "AHB";
 case 0x08:
  return "AHB system bus, ASB processor bus";
 default:
  return "Unknown";
 }
}
