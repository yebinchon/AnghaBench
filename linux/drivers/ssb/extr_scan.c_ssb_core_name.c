
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
const char *ssb_core_name(u16 coreid)
{
 switch (coreid) {
 case 155:
  return "ChipCommon";
 case 150:
  return "ILine 20";
 case 135:
  return "SDRAM";
 case 141:
  return "PCI";
 case 144:
  return "MIPS";
 case 154:
  return "Fast Ethernet";
 case 128:
  return "V90";
 case 131:
  return "USB 1.1 Hostdev";
 case 159:
  return "ADSL";
 case 151:
  return "ILine 100";
 case 148:
  return "IPSEC";
 case 139:
  return "PCMCIA";
 case 149:
  return "Internal Memory";
 case 147:
  return "MEMC SDRAM";
 case 152:
  return "EXTIF";
 case 160:
  return "IEEE 802.11";
 case 143:
  return "MIPS 3302";
 case 132:
  return "USB 1.1 Host";
 case 133:
  return "USB 1.1 Device";
 case 129:
  return "USB 2.0 Host";
 case 130:
  return "USB 2.0 Device";
 case 136:
  return "SDIO Host";
 case 138:
  return "Roboswitch";
 case 142:
  return "PATA";
 case 137:
  return "SATA XOR-DMA";
 case 153:
  return "GBit Ethernet";
 case 140:
  return "PCI-E";
 case 146:
  return "MIMO PHY";
 case 134:
  return "SRAM Controller";
 case 145:
  return "Mini MACPHY";
 case 158:
  return "ARM 1176";
 case 157:
  return "ARM 7TDMI";
 case 156:
  return "ARM Cortex M3";
 }
 return "UNKNOWN";
}
