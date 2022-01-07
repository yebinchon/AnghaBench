
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;


 int CARD_DDEV (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int qdio_activate (int ) ;

__attribute__((used)) static int qeth_qdio_activate(struct qeth_card *card)
{
 QETH_CARD_TEXT(card, 3, "qdioact");
 return qdio_activate(CARD_DDEV(card));
}
