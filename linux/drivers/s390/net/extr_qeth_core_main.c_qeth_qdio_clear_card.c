
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct qeth_card {int state; TYPE_1__ qdio; } ;


 int CARD_DDEV (struct qeth_card*) ;
 int CARD_STATE_DOWN ;
 int IS_IQD (struct qeth_card*) ;
 int QDIO_FLAG_CLEANUP_USING_CLEAR ;
 int QDIO_FLAG_CLEANUP_USING_HALT ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int QETH_QDIO_ALLOCATED ;


 int atomic_cmpxchg (int *,int,int) ;
 int atomic_set (int *,int ) ;
 int qdio_shutdown (int ,int ) ;
 int qeth_clear_halt_card (struct qeth_card*,int) ;

int qeth_qdio_clear_card(struct qeth_card *card, int use_halt)
{
 int rc = 0;

 QETH_CARD_TEXT(card, 3, "qdioclr");
 switch (atomic_cmpxchg(&card->qdio.state, 128,
  129)) {
 case 128:
  if (IS_IQD(card))
   rc = qdio_shutdown(CARD_DDEV(card),
    QDIO_FLAG_CLEANUP_USING_HALT);
  else
   rc = qdio_shutdown(CARD_DDEV(card),
    QDIO_FLAG_CLEANUP_USING_CLEAR);
  if (rc)
   QETH_CARD_TEXT_(card, 3, "1err%d", rc);
  atomic_set(&card->qdio.state, QETH_QDIO_ALLOCATED);
  break;
 case 129:
  return rc;
 default:
  break;
 }
 rc = qeth_clear_halt_card(card, use_halt);
 if (rc)
  QETH_CARD_TEXT_(card, 3, "2err%d", rc);
 card->state = CARD_STATE_DOWN;
 return rc;
}
