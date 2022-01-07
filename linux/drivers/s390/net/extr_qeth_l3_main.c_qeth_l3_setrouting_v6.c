
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_3__ {TYPE_2__ route6; } ;
struct qeth_card {TYPE_1__ options; } ;


 int CARD_DEVID (struct qeth_card*) ;
 int IPA_IPV6 ;
 int NO_ROUTER ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DBF_MESSAGE (int,char*,int,int ) ;
 int QETH_PROT_IPV6 ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_correct_routing_type (struct qeth_card*,int *,int ) ;
 int qeth_l3_send_setrouting (struct qeth_card*,int ,int ) ;

int qeth_l3_setrouting_v6(struct qeth_card *card)
{
 int rc = 0;

 QETH_CARD_TEXT(card, 3, "setrtg6");

 if (!qeth_is_supported(card, IPA_IPV6))
  return 0;
 rc = qeth_l3_correct_routing_type(card, &card->options.route6.type,
      QETH_PROT_IPV6);
 if (rc)
  return rc;

 rc = qeth_l3_send_setrouting(card, card->options.route6.type,
      QETH_PROT_IPV6);
 if (rc) {
  card->options.route6.type = NO_ROUTER;
  QETH_DBF_MESSAGE(2, "Error (%#06x) while setting routing type on device %x. Type set to 'no router'.\n",
     rc, CARD_DEVID(card));
 }
 return rc;
}
