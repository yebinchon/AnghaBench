
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_trap_id {int dummy; } ;
struct TYPE_3__ {int type; int action; int options; int ext; scalar_t__ cdata; } ;
struct TYPE_4__ {TYPE_1__ diagass; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_diags_trap_action { ____Placeholder_qeth_diags_trap_action } qeth_diags_trap_action ;


 int ENOMEM ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DIAGS_CMD_TRAP ;



 struct qeth_ipa_cmd* __ipa_cmd (struct qeth_cmd_buffer*) ;
 struct qeth_cmd_buffer* qeth_get_diag_cmd (struct qeth_card*,int ,int) ;
 int qeth_get_trap_id (struct qeth_card*,struct qeth_trap_id*) ;
 int qeth_hw_trap_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

int qeth_hw_trap(struct qeth_card *card, enum qeth_diags_trap_action action)
{
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;

 QETH_CARD_TEXT(card, 2, "diagtrap");
 iob = qeth_get_diag_cmd(card, QETH_DIAGS_CMD_TRAP, 64);
 if (!iob)
  return -ENOMEM;
 cmd = __ipa_cmd(iob);
 cmd->data.diagass.type = 1;
 cmd->data.diagass.action = action;
 switch (action) {
 case 130:
  cmd->data.diagass.options = 0x0003;
  cmd->data.diagass.ext = 0x00010000 +
   sizeof(struct qeth_trap_id);
  qeth_get_trap_id(card,
   (struct qeth_trap_id *)cmd->data.diagass.cdata);
  break;
 case 128:
  cmd->data.diagass.options = 0x0001;
  break;
 case 129:
  break;
 }
 return qeth_send_ipa_cmd(card, iob, qeth_hw_trap_cb, ((void*)0));
}
