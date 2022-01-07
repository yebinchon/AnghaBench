
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vlan_id; } ;
struct TYPE_4__ {TYPE_1__ setdelvlan; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_ipa_cmds { ____Placeholder_qeth_ipa_cmds } qeth_ipa_cmds ;
typedef int __u16 ;


 int ENOMEM ;
 int IPA_DATA_SIZEOF (int ) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int QETH_PROT_IPV4 ;
 struct qeth_ipa_cmd* __ipa_cmd (struct qeth_cmd_buffer*) ;
 struct qeth_cmd_buffer* qeth_ipa_alloc_cmd (struct qeth_card*,int,int ,int ) ;
 int qeth_l2_send_setdelvlan_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;
 int setdelvlan ;

__attribute__((used)) static int qeth_l2_send_setdelvlan(struct qeth_card *card, __u16 i,
       enum qeth_ipa_cmds ipacmd)
{
 struct qeth_ipa_cmd *cmd;
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT_(card, 4, "L2sdv%x", ipacmd);
 iob = qeth_ipa_alloc_cmd(card, ipacmd, QETH_PROT_IPV4,
     IPA_DATA_SIZEOF(setdelvlan));
 if (!iob)
  return -ENOMEM;
 cmd = __ipa_cmd(iob);
 cmd->data.setdelvlan.vlan_id = i;
 return qeth_send_ipa_cmd(card, iob, qeth_l2_send_setdelvlan_cb, ((void*)0));
}
