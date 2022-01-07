
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int qeth_clear_channels (struct qeth_card*) ;
 int qeth_halt_channels (struct qeth_card*) ;

__attribute__((used)) static int qeth_clear_halt_card(struct qeth_card *card, int halt)
{
 int rc = 0;

 QETH_CARD_TEXT(card, 3, "clhacrd");

 if (halt)
  rc = qeth_halt_channels(card);
 if (rc)
  return rc;
 return qeth_clear_channels(card);
}
