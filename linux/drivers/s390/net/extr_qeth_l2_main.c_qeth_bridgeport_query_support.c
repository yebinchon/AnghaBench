
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_cmd_buffer {int dummy; } ;
struct TYPE_5__ {int supported_funcs; int role; } ;
struct TYPE_6__ {TYPE_2__ sbp; } ;
struct qeth_card {TYPE_3__ options; } ;
struct TYPE_4__ {int supported; } ;
struct _qeth_sbp_cbctl {TYPE_1__ data; } ;


 int IPA_SBP_QUERY_COMMANDS_SUPPORTED ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_SBP_ROLE_NONE ;
 int SBP_DATA_SIZEOF (int ) ;
 int qeth_bridgeport_query_support_cb ;
 struct qeth_cmd_buffer* qeth_sbp_build_cmd (struct qeth_card*,int ,int ) ;
 scalar_t__ qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,struct _qeth_sbp_cbctl*) ;
 int query_cmds_supp ;

__attribute__((used)) static void qeth_bridgeport_query_support(struct qeth_card *card)
{
 struct qeth_cmd_buffer *iob;
 struct _qeth_sbp_cbctl cbctl;

 QETH_CARD_TEXT(card, 2, "brqsuppo");
 iob = qeth_sbp_build_cmd(card, IPA_SBP_QUERY_COMMANDS_SUPPORTED,
     SBP_DATA_SIZEOF(query_cmds_supp));
 if (!iob)
  return;

 if (qeth_send_ipa_cmd(card, iob, qeth_bridgeport_query_support_cb,
         &cbctl)) {
  card->options.sbp.role = QETH_SBP_ROLE_NONE;
  card->options.sbp.supported_funcs = 0;
  return;
 }
 card->options.sbp.supported_funcs = cbctl.data.supported;
}
