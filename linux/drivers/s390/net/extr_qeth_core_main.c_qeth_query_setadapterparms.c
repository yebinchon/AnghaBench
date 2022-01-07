
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;


 int ENOMEM ;
 int IPA_SETADP_QUERY_COMMANDS_SUPPORTED ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int SETADP_DATA_SIZEOF (int ) ;
 struct qeth_cmd_buffer* qeth_get_adapter_cmd (struct qeth_card*,int ,int ) ;
 int qeth_query_setadapterparms_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;
 int query_cmds_supp ;

__attribute__((used)) static int qeth_query_setadapterparms(struct qeth_card *card)
{
 int rc;
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT(card, 3, "queryadp");
 iob = qeth_get_adapter_cmd(card, IPA_SETADP_QUERY_COMMANDS_SUPPORTED,
       SETADP_DATA_SIZEOF(query_cmds_supp));
 if (!iob)
  return -ENOMEM;
 rc = qeth_send_ipa_cmd(card, iob, qeth_query_setadapterparms_cb, ((void*)0));
 return rc;
}
