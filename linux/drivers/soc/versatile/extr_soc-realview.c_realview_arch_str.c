
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static const char *realview_arch_str(u32 id)
{
 switch ((id >> 8) & 0xf) {
 case 0x04:
  return "AHB";
 case 0x05:
  return "Multi-layer AXI";
 default:
  return "Unknown";
 }
}
