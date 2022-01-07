
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * unique_id; } ;
struct TYPE_6__ {TYPE_2__ create_destroy_addr; } ;
struct qeth_ipa_cmd {TYPE_3__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct TYPE_4__ {int unique_id; } ;
struct qeth_card {TYPE_1__ info; } ;
typedef int __u16 ;


 int ENOMEM ;
 int IPA_CMD_CREATE_ADDR ;
 int IPA_DATA_SIZEOF (int ) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_PROT_IPV6 ;
 struct qeth_ipa_cmd* __ipa_cmd (struct qeth_cmd_buffer*) ;
 int create_destroy_addr ;
 struct qeth_cmd_buffer* qeth_ipa_alloc_cmd (struct qeth_card*,int ,int ,int ) ;
 int qeth_l3_iqd_read_initial_mac_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

__attribute__((used)) static int qeth_l3_iqd_read_initial_mac(struct qeth_card *card)
{
 int rc = 0;
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;

 QETH_CARD_TEXT(card, 2, "hsrmac");

 iob = qeth_ipa_alloc_cmd(card, IPA_CMD_CREATE_ADDR, QETH_PROT_IPV6,
     IPA_DATA_SIZEOF(create_destroy_addr));
 if (!iob)
  return -ENOMEM;
 cmd = __ipa_cmd(iob);
 *((__u16 *) &cmd->data.create_destroy_addr.unique_id[6]) =
   card->info.unique_id;

 rc = qeth_send_ipa_cmd(card, iob, qeth_l3_iqd_read_initial_mac_cb,
    ((void*)0));
 return rc;
}
