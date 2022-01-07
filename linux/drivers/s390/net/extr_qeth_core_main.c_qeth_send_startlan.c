
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;


 int ENOMEM ;
 int IPA_CMD_STARTLAN ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_PROT_NONE ;
 struct qeth_cmd_buffer* qeth_ipa_alloc_cmd (struct qeth_card*,int ,int ,int ) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;
 int qeth_send_startlan_cb ;

__attribute__((used)) static int qeth_send_startlan(struct qeth_card *card)
{
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT(card, 2, "strtlan");

 iob = qeth_ipa_alloc_cmd(card, IPA_CMD_STARTLAN, QETH_PROT_NONE, 0);
 if (!iob)
  return -ENOMEM;
 return qeth_send_ipa_cmd(card, iob, qeth_send_startlan_cb, ((void*)0));
}
