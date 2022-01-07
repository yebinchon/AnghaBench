
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * unique_id; } ;
struct TYPE_5__ {TYPE_1__ create_destroy_addr; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct TYPE_6__ {int unique_id; } ;
struct qeth_card {TYPE_3__ info; } ;
typedef int __u16 ;


 int ENOMEM ;
 int IPA_CMD_CREATE_ADDR ;
 int IPA_DATA_SIZEOF (int ) ;
 int IPA_IPV6 ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_PROT_IPV6 ;
 int UNIQUE_ID_IF_CREATE_ADDR_FAILED ;
 int UNIQUE_ID_NOT_BY_CARD ;
 struct qeth_ipa_cmd* __ipa_cmd (struct qeth_cmd_buffer*) ;
 int create_destroy_addr ;
 struct qeth_cmd_buffer* qeth_ipa_alloc_cmd (struct qeth_card*,int ,int ,int ) ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_get_unique_id_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

__attribute__((used)) static int qeth_l3_get_unique_id(struct qeth_card *card)
{
 int rc = 0;
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;

 QETH_CARD_TEXT(card, 2, "guniqeid");

 if (!qeth_is_supported(card, IPA_IPV6)) {
  card->info.unique_id = UNIQUE_ID_IF_CREATE_ADDR_FAILED |
     UNIQUE_ID_NOT_BY_CARD;
  return 0;
 }

 iob = qeth_ipa_alloc_cmd(card, IPA_CMD_CREATE_ADDR, QETH_PROT_IPV6,
     IPA_DATA_SIZEOF(create_destroy_addr));
 if (!iob)
  return -ENOMEM;
 cmd = __ipa_cmd(iob);
 *((__u16 *) &cmd->data.create_destroy_addr.unique_id[6]) =
   card->info.unique_id;

 rc = qeth_send_ipa_cmd(card, iob, qeth_l3_get_unique_id_cb, ((void*)0));
 return rc;
}
