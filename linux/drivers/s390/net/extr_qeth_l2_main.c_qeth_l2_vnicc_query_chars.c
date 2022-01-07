
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;


 int ENOMEM ;
 int IPA_VNICC_QUERY_CHARS ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 struct qeth_cmd_buffer* qeth_l2_vnicc_build_cmd (struct qeth_card*,int ,int ) ;
 int qeth_l2_vnicc_request_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

__attribute__((used)) static int qeth_l2_vnicc_query_chars(struct qeth_card *card)
{
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT(card, 2, "vniccqch");
 iob = qeth_l2_vnicc_build_cmd(card, IPA_VNICC_QUERY_CHARS, 0);
 if (!iob)
  return -ENOMEM;

 return qeth_send_ipa_cmd(card, iob, qeth_l2_vnicc_request_cb, ((void*)0));
}
