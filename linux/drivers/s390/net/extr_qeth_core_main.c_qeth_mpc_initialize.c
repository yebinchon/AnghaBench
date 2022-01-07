
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;


 int CARD_DDEV (struct qeth_card*) ;
 int IS_IQD (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int qdio_free (int ) ;
 int qeth_alloc_qdio_queues (struct qeth_card*) ;
 int qeth_cm_enable (struct qeth_card*) ;
 int qeth_cm_setup (struct qeth_card*) ;
 int qeth_dm_act (struct qeth_card*) ;
 int qeth_free_qdio_queues (struct qeth_card*) ;
 int qeth_issue_next_read (struct qeth_card*) ;
 int qeth_qdio_activate (struct qeth_card*) ;
 int qeth_qdio_clear_card (struct qeth_card*,int) ;
 int qeth_qdio_establish (struct qeth_card*) ;
 int qeth_ulp_enable (struct qeth_card*) ;
 int qeth_ulp_setup (struct qeth_card*) ;

__attribute__((used)) static int qeth_mpc_initialize(struct qeth_card *card)
{
 int rc;

 QETH_CARD_TEXT(card, 2, "mpcinit");

 rc = qeth_issue_next_read(card);
 if (rc) {
  QETH_CARD_TEXT_(card, 2, "1err%d", rc);
  return rc;
 }
 rc = qeth_cm_enable(card);
 if (rc) {
  QETH_CARD_TEXT_(card, 2, "2err%d", rc);
  goto out_qdio;
 }
 rc = qeth_cm_setup(card);
 if (rc) {
  QETH_CARD_TEXT_(card, 2, "3err%d", rc);
  goto out_qdio;
 }
 rc = qeth_ulp_enable(card);
 if (rc) {
  QETH_CARD_TEXT_(card, 2, "4err%d", rc);
  goto out_qdio;
 }
 rc = qeth_ulp_setup(card);
 if (rc) {
  QETH_CARD_TEXT_(card, 2, "5err%d", rc);
  goto out_qdio;
 }
 rc = qeth_alloc_qdio_queues(card);
 if (rc) {
  QETH_CARD_TEXT_(card, 2, "5err%d", rc);
  goto out_qdio;
 }
 rc = qeth_qdio_establish(card);
 if (rc) {
  QETH_CARD_TEXT_(card, 2, "6err%d", rc);
  qeth_free_qdio_queues(card);
  goto out_qdio;
 }
 rc = qeth_qdio_activate(card);
 if (rc) {
  QETH_CARD_TEXT_(card, 2, "7err%d", rc);
  goto out_qdio;
 }
 rc = qeth_dm_act(card);
 if (rc) {
  QETH_CARD_TEXT_(card, 2, "8err%d", rc);
  goto out_qdio;
 }

 return 0;
out_qdio:
 qeth_qdio_clear_card(card, !IS_IQD(card));
 qdio_free(CARD_DDEV(card));
 return rc;
}
