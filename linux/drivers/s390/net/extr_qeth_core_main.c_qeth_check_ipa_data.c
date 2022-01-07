
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int command; int return_code; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; } ;
struct TYPE_7__ {int hwtrap; int chpid; } ;
struct qeth_card {TYPE_4__* discipline; TYPE_3__ info; TYPE_2__* gdev; int dev; int close_dev_work; } ;
struct TYPE_8__ {int (* control_event_handler ) (struct qeth_card*,struct qeth_ipa_cmd*) ;} ;
struct TYPE_6__ {int dev; } ;



 int IPA_CMD_DELCCID ;




 int IPA_CMD_SETCCID ;
 int IPA_CMD_SET_DIAG_ASS ;



 int IPA_RC_VEPA_TO_VEB_TRANSITION ;
 scalar_t__ IS_IPA_REPLY (struct qeth_ipa_cmd*) ;
 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DBF_MESSAGE (int,char*) ;
 int dev_err (int *,char*,int ) ;
 int dev_info (int *,char*,int ,int ) ;
 int dev_warn (int *,char*,int ,int ) ;
 int netif_carrier_off (int ) ;
 int qeth_issue_ipa_msg (struct qeth_ipa_cmd*,int ,struct qeth_card*) ;
 int qeth_schedule_recovery (struct qeth_card*) ;
 int schedule_work (int *) ;
 int stub1 (struct qeth_card*,struct qeth_ipa_cmd*) ;

__attribute__((used)) static struct qeth_ipa_cmd *qeth_check_ipa_data(struct qeth_card *card,
      struct qeth_ipa_cmd *cmd)
{
 QETH_CARD_TEXT(card, 5, "chkipad");

 if (IS_IPA_REPLY(cmd)) {
  if (cmd->hdr.command != IPA_CMD_SETCCID &&
      cmd->hdr.command != IPA_CMD_DELCCID &&
      cmd->hdr.command != 134 &&
      cmd->hdr.command != IPA_CMD_SET_DIAG_ASS)
   qeth_issue_ipa_msg(cmd, cmd->hdr.return_code, card);
  return cmd;
 }


 switch (cmd->hdr.command) {
 case 129:
  if (cmd->hdr.return_code == IPA_RC_VEPA_TO_VEB_TRANSITION) {
   dev_err(&card->gdev->dev,
    "Interface %s is down because the adjacent port is no longer in reflective relay mode\n",
    QETH_CARD_IFNAME(card));
   schedule_work(&card->close_dev_work);
  } else {
   dev_warn(&card->gdev->dev,
     "The link for interface %s on CHPID 0x%X failed\n",
     QETH_CARD_IFNAME(card), card->info.chpid);
   qeth_issue_ipa_msg(cmd, cmd->hdr.return_code, card);
   netif_carrier_off(card->dev);
  }
  return ((void*)0);
 case 130:
  dev_info(&card->gdev->dev,
    "The link for %s on CHPID 0x%X has been restored\n",
    QETH_CARD_IFNAME(card), card->info.chpid);
  if (card->info.hwtrap)
   card->info.hwtrap = 2;
  qeth_schedule_recovery(card);
  return ((void*)0);
 case 132:
 case 131:
 case 135:
  if (card->discipline->control_event_handler(card, cmd))
   return cmd;
  return ((void*)0);
 case 134:
  return cmd;
 case 133:
  QETH_CARD_TEXT(card, 3, "irla");
  return ((void*)0);
 case 128:
  QETH_CARD_TEXT(card, 3, "urla");
  return ((void*)0);
 default:
  QETH_DBF_MESSAGE(2, "Received data is IPA but not a reply!\n");
  return cmd;
 }
}
