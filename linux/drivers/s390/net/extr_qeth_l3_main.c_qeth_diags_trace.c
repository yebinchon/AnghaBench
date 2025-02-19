
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int action; int type; } ;
struct TYPE_4__ {TYPE_1__ diagass; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_diags_trace_cmds { ____Placeholder_qeth_diags_trace_cmds } qeth_diags_trace_cmds ;


 int ENOMEM ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DIAGS_CMD_TRACE ;
 int QETH_DIAGS_TYPE_HIPERSOCKET ;
 struct qeth_ipa_cmd* __ipa_cmd (struct qeth_cmd_buffer*) ;
 int qeth_diags_trace_cb ;
 struct qeth_cmd_buffer* qeth_get_diag_cmd (struct qeth_card*,int ,int ) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

__attribute__((used)) static int
qeth_diags_trace(struct qeth_card *card, enum qeth_diags_trace_cmds diags_cmd)
{
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;

 QETH_CARD_TEXT(card, 2, "diagtrac");

 iob = qeth_get_diag_cmd(card, QETH_DIAGS_CMD_TRACE, 0);
 if (!iob)
  return -ENOMEM;
 cmd = __ipa_cmd(iob);
 cmd->data.diagass.type = QETH_DIAGS_TYPE_HIPERSOCKET;
 cmd->data.diagass.action = diags_cmd;
 return qeth_send_ipa_cmd(card, iob, qeth_diags_trace_cb, ((void*)0));
}
