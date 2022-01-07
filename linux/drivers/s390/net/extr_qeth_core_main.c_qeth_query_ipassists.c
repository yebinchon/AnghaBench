
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int ENOMEM ;
 int IPA_CMD_QIPASSIST ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 struct qeth_cmd_buffer* qeth_ipa_alloc_cmd (struct qeth_card*,int ,int,int ) ;
 int qeth_query_ipassists_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

__attribute__((used)) static int qeth_query_ipassists(struct qeth_card *card,
    enum qeth_prot_versions prot)
{
 int rc;
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT_(card, 2, "qipassi%i", prot);
 iob = qeth_ipa_alloc_cmd(card, IPA_CMD_QIPASSIST, prot, 0);
 if (!iob)
  return -ENOMEM;
 rc = qeth_send_ipa_cmd(card, iob, qeth_query_ipassists_cb, ((void*)0));
 return rc;
}
