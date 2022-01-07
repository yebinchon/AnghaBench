
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
typedef enum qeth_discipline_id { ____Placeholder_qeth_discipline_id } qeth_discipline_id ;


 scalar_t__ IS_IQD (struct qeth_card*) ;
 scalar_t__ IS_OSM (struct qeth_card*) ;
 scalar_t__ IS_OSN (struct qeth_card*) ;
 scalar_t__ IS_VM_NIC (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;


 int QETH_DISCIPLINE_UNDETERMINED ;
 int qeth_vm_detect_layer (struct qeth_card*) ;

__attribute__((used)) static enum qeth_discipline_id qeth_enforce_discipline(struct qeth_card *card)
{
 enum qeth_discipline_id disc = QETH_DISCIPLINE_UNDETERMINED;

 if (IS_OSM(card) || IS_OSN(card))
  disc = 129;
 else if (IS_VM_NIC(card))
  disc = IS_IQD(card) ? 128 :
          qeth_vm_detect_layer(card);

 switch (disc) {
 case 129:
  QETH_CARD_TEXT(card, 3, "force l2");
  break;
 case 128:
  QETH_CARD_TEXT(card, 3, "force l3");
  break;
 default:
  QETH_CARD_TEXT(card, 3, "force no");
 }

 return disc;
}
