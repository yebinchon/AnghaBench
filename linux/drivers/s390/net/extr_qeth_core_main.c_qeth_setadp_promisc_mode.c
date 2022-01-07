
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct TYPE_6__ {TYPE_2__ setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_3__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_ipa_promisc_modes { ____Placeholder_qeth_ipa_promisc_modes } qeth_ipa_promisc_modes ;


 int IPA_SETADP_SET_PROMISC_MODE ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int SETADP_DATA_SIZEOF (int) ;
 int SET_PROMISC_MODE_OFF ;
 int SET_PROMISC_MODE_ON ;
 struct qeth_ipa_cmd* __ipa_cmd (struct qeth_cmd_buffer*) ;
 struct qeth_cmd_buffer* qeth_get_adapter_cmd (struct qeth_card*,int ,int ) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;
 int qeth_setadp_promisc_mode_cb ;

void qeth_setadp_promisc_mode(struct qeth_card *card, bool enable)
{
 enum qeth_ipa_promisc_modes mode = enable ? SET_PROMISC_MODE_ON :
          SET_PROMISC_MODE_OFF;
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;

 QETH_CARD_TEXT(card, 4, "setprom");
 QETH_CARD_TEXT_(card, 4, "mode:%x", mode);

 iob = qeth_get_adapter_cmd(card, IPA_SETADP_SET_PROMISC_MODE,
       SETADP_DATA_SIZEOF(mode));
 if (!iob)
  return;
 cmd = __ipa_cmd(iob);
 cmd->data.setadapterparms.data.mode = mode;
 qeth_send_ipa_cmd(card, iob, qeth_setadp_promisc_mode_cb, ((void*)0));
}
