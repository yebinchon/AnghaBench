
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_cmd_buffer {int dummy; } ;
struct TYPE_3__ {int supported_funcs; } ;
struct TYPE_4__ {TYPE_1__ sbp; } ;
struct qeth_card {TYPE_2__ options; } ;
typedef enum qeth_sbp_roles { ____Placeholder_qeth_sbp_roles } qeth_sbp_roles ;
typedef enum qeth_ipa_sbp_cmd { ____Placeholder_qeth_ipa_sbp_cmd } qeth_ipa_sbp_cmd ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int IPA_SBP_RESET_BRIDGE_PORT_ROLE ;
 int IPA_SBP_SET_PRIMARY_BRIDGE_PORT ;
 int IPA_SBP_SET_SECONDARY_BRIDGE_PORT ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;



 unsigned int SBP_DATA_SIZEOF (int ) ;
 int qeth_bridgeport_set_cb ;
 struct qeth_cmd_buffer* qeth_sbp_build_cmd (struct qeth_card*,int,unsigned int) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;
 int set_primary ;

int qeth_bridgeport_setrole(struct qeth_card *card, enum qeth_sbp_roles role)
{
 struct qeth_cmd_buffer *iob;
 enum qeth_ipa_sbp_cmd setcmd;
 unsigned int cmdlength = 0;

 QETH_CARD_TEXT(card, 2, "brsetrol");
 switch (role) {
 case 130:
  setcmd = IPA_SBP_RESET_BRIDGE_PORT_ROLE;
  break;
 case 129:
  setcmd = IPA_SBP_SET_PRIMARY_BRIDGE_PORT;
  cmdlength = SBP_DATA_SIZEOF(set_primary);
  break;
 case 128:
  setcmd = IPA_SBP_SET_SECONDARY_BRIDGE_PORT;
  break;
 default:
  return -EINVAL;
 }
 if (!(card->options.sbp.supported_funcs & setcmd))
  return -EOPNOTSUPP;
 iob = qeth_sbp_build_cmd(card, setcmd, cmdlength);
 if (!iob)
  return -ENOMEM;

 return qeth_send_ipa_cmd(card, iob, qeth_bridgeport_set_cb, ((void*)0));
}
