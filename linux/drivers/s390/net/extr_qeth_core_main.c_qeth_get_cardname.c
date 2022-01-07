
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct qeth_card {TYPE_1__ info; } ;


 scalar_t__ IS_VM_NIC (struct qeth_card*) ;






__attribute__((used)) static const char *qeth_get_cardname(struct qeth_card *card)
{
 if (IS_VM_NIC(card)) {
  switch (card->info.type) {
  case 131:
   return " Virtual NIC QDIO";
  case 132:
   return " Virtual NIC Hiper";
  case 130:
   return " Virtual NIC QDIO - OSM";
  case 128:
   return " Virtual NIC QDIO - OSX";
  default:
   return " unknown";
  }
 } else {
  switch (card->info.type) {
  case 131:
   return " OSD Express";
  case 132:
   return " HiperSockets";
  case 129:
   return " OSN QDIO";
  case 130:
   return " OSM QDIO";
  case 128:
   return " OSX QDIO";
  default:
   return " unknown";
  }
 }
 return " n/a";
}
