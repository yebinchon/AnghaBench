
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static const char *integrator_fpga_str(u32 id)
{
 switch ((id >> 12) & 0xf) {
 case 0x01:
  return "XC4062";
 case 0x02:
  return "XC4085";
 case 0x03:
  return "XVC600";
 case 0x04:
  return "EPM7256AE (Altera PLD)";
 default:
  return "Unknown";
 }
}
