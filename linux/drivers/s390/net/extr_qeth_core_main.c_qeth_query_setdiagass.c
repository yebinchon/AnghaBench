
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;


 int ENOMEM ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DIAGS_CMD_QUERY ;
 struct qeth_cmd_buffer* qeth_get_diag_cmd (struct qeth_card*,int ,int ) ;
 int qeth_query_setdiagass_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

__attribute__((used)) static int qeth_query_setdiagass(struct qeth_card *card)
{
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT(card, 2, "qdiagass");
 iob = qeth_get_diag_cmd(card, QETH_DIAGS_CMD_QUERY, 0);
 if (!iob)
  return -ENOMEM;
 return qeth_send_ipa_cmd(card, iob, qeth_query_setdiagass_cb, ((void*)0));
}
