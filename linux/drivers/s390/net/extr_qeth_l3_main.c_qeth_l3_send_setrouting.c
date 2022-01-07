
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ setrtg; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_routing_types { ____Placeholder_qeth_routing_types } qeth_routing_types ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int ENOMEM ;
 int IPA_CMD_SETRTG ;
 int IPA_DATA_SIZEOF (int ) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 struct qeth_ipa_cmd* __ipa_cmd (struct qeth_cmd_buffer*) ;
 struct qeth_cmd_buffer* qeth_ipa_alloc_cmd (struct qeth_card*,int ,int,int ) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int *,int *) ;
 int setrtg ;

__attribute__((used)) static int qeth_l3_send_setrouting(struct qeth_card *card,
 enum qeth_routing_types type, enum qeth_prot_versions prot)
{
 int rc;
 struct qeth_ipa_cmd *cmd;
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT(card, 4, "setroutg");
 iob = qeth_ipa_alloc_cmd(card, IPA_CMD_SETRTG, prot,
     IPA_DATA_SIZEOF(setrtg));
 if (!iob)
  return -ENOMEM;
 cmd = __ipa_cmd(iob);
 cmd->data.setrtg.type = (type);
 rc = qeth_send_ipa_cmd(card, iob, ((void*)0), ((void*)0));

 return rc;
}
