
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct host_to_dev_fis {int command; int features; } ;
 int DMA_NONE ;
 int HISI_SAS_SATA_PROTOCOL_DMA ;
 int HISI_SAS_SATA_PROTOCOL_FPDMA ;
 int HISI_SAS_SATA_PROTOCOL_NONDATA ;
 int HISI_SAS_SATA_PROTOCOL_PIO ;

u8 hisi_sas_get_ata_protocol(struct host_to_dev_fis *fis, int direction)
{
 switch (fis->command) {
 case 164:
 case 167:
 case 166:
 case 165:
 case 162:
  return HISI_SAS_SATA_PROTOCOL_FPDMA;

 case 173:
 case 163:
 case 157:
 case 150:
 case 161:
 case 160:
 case 155:
 case 136:
 case 159:
 case 158:
  return HISI_SAS_SATA_PROTOCOL_PIO;

 case 171:
 case 172:
 case 156:
 case 154:
 case 153:
 case 152:
 case 151:
 case 149:
 case 144:
 case 143:
 case 140:
 case 139:
 case 138:
 case 135:
 case 137:
 case 134:
 case 133:
  return HISI_SAS_SATA_PROTOCOL_DMA;

 case 175:
 case 174:
 case 170:
 case 169:
 case 168:
 case 142:
 case 141:
 case 148:
 case 146:
 case 145:
 case 132:
  return HISI_SAS_SATA_PROTOCOL_NONDATA;

 case 147:
  switch (fis->features) {
  case 130:
  case 131:
   return HISI_SAS_SATA_PROTOCOL_PIO;

  case 129:
  case 128:
   return HISI_SAS_SATA_PROTOCOL_DMA;

  default:
   return HISI_SAS_SATA_PROTOCOL_NONDATA;
  }

 default:
 {
  if (direction == DMA_NONE)
   return HISI_SAS_SATA_PROTOCOL_NONDATA;
  return HISI_SAS_SATA_PROTOCOL_PIO;
 }
 }
}
