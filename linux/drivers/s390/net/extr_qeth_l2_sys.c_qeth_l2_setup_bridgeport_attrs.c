
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ role; scalar_t__ hostnotification; int supported_funcs; } ;
struct TYPE_3__ {TYPE_2__ sbp; } ;
struct qeth_card {TYPE_1__ options; } ;


 scalar_t__ QETH_SBP_ROLE_NONE ;
 int qeth_bridgeport_an_set (struct qeth_card*,int) ;
 int qeth_bridgeport_query_ports (struct qeth_card*,scalar_t__*,int *) ;
 int qeth_bridgeport_setrole (struct qeth_card*,scalar_t__) ;

void qeth_l2_setup_bridgeport_attrs(struct qeth_card *card)
{
 int rc;

 if (!card)
  return;
 if (!card->options.sbp.supported_funcs)
  return;
 if (card->options.sbp.role != QETH_SBP_ROLE_NONE) {

  qeth_bridgeport_setrole(card, card->options.sbp.role);

  qeth_bridgeport_query_ports(card,
   &card->options.sbp.role, ((void*)0));
 }
 if (card->options.sbp.hostnotification) {
  rc = qeth_bridgeport_an_set(card, 1);
  if (rc)
   card->options.sbp.hostnotification = 0;
 } else
  qeth_bridgeport_an_set(card, 0);
}
