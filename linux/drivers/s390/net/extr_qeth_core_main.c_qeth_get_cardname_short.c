
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int link_type; } ;
struct qeth_card {TYPE_1__ info; } ;


 scalar_t__ IS_VM_NIC (struct qeth_card*) ;
const char *qeth_get_cardname_short(struct qeth_card *card)
{
 if (IS_VM_NIC(card)) {
  switch (card->info.type) {
  case 140:
   return "Virt.NIC QDIO";
  case 141:
   return "Virt.NIC Hiper";
  case 139:
   return "Virt.NIC OSM";
  case 137:
   return "Virt.NIC OSX";
  default:
   return "unknown";
  }
 } else {
  switch (card->info.type) {
  case 140:
   switch (card->info.link_type) {
   case 134:
    return "OSD_100";
   case 132:
    return "HSTR";
   case 133:
    return "OSD_1000";
   case 136:
    return "OSD_10GIG";
   case 135:
    return "OSD_25GIG";
   case 130:
    return "OSD_FE_LANE";
   case 128:
    return "OSD_TR_LANE";
   case 129:
    return "OSD_GbE_LANE";
   case 131:
    return "OSD_ATM_LANE";
   default:
    return "OSD_Express";
   }
  case 141:
   return "HiperSockets";
  case 138:
   return "OSN";
  case 139:
   return "OSM_1000";
  case 137:
   return "OSX_10GIG";
  default:
   return "unknown";
  }
 }
 return "n/a";
}
