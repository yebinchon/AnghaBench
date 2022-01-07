
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct qeth_set_access_ctrl {int subcmd_code; } ;
struct qeth_reply {scalar_t__ param; } ;
struct TYPE_14__ {scalar_t__ return_code; } ;
struct TYPE_9__ {int return_code; } ;
struct TYPE_8__ {struct qeth_set_access_ctrl set_access_ctrl; } ;
struct TYPE_10__ {TYPE_2__ hdr; TYPE_1__ data; } ;
struct TYPE_11__ {TYPE_3__ setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_7__ hdr; TYPE_4__ data; } ;
struct TYPE_13__ {int prev_isolation; int isolation; } ;
struct qeth_card {TYPE_6__ options; TYPE_5__* gdev; } ;
struct TYPE_12__ {int dev; } ;


 int CARD_DEVID (struct qeth_card*) ;
 int EIO ;
 int ISOLATION_MODE_NONE ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int QETH_DBF_MESSAGE (int,char*,int ,...) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int qeth_setadpparms_inspect_rc (struct qeth_ipa_cmd*) ;

__attribute__((used)) static int qeth_setadpparms_set_access_ctrl_cb(struct qeth_card *card,
  struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;
 struct qeth_set_access_ctrl *access_ctrl_req;
 int fallback = *(int *)reply->param;

 QETH_CARD_TEXT(card, 4, "setaccb");
 if (cmd->hdr.return_code)
  return -EIO;
 qeth_setadpparms_inspect_rc(cmd);

 access_ctrl_req = &cmd->data.setadapterparms.data.set_access_ctrl;
 QETH_CARD_TEXT_(card, 2, "rc=%d",
   cmd->data.setadapterparms.hdr.return_code);
 if (cmd->data.setadapterparms.hdr.return_code !=
      128)
  QETH_DBF_MESSAGE(3, "ERR:SET_ACCESS_CTRL(%#x) on device %x: %#x\n",
     access_ctrl_req->subcmd_code, CARD_DEVID(card),
     cmd->data.setadapterparms.hdr.return_code);
 switch (cmd->data.setadapterparms.hdr.return_code) {
 case 128:
  if (card->options.isolation == ISOLATION_MODE_NONE) {
   dev_info(&card->gdev->dev,
       "QDIO data connection isolation is deactivated\n");
  } else {
   dev_info(&card->gdev->dev,
       "QDIO data connection isolation is activated\n");
  }
  break;
 case 134:
  QETH_DBF_MESSAGE(2, "QDIO data connection isolation on device %x already deactivated\n",
     CARD_DEVID(card));
  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 case 135:
  QETH_DBF_MESSAGE(2, "QDIO data connection isolation on device %x already activated\n",
     CARD_DEVID(card));
  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 case 132:
  dev_err(&card->gdev->dev, "Adapter does not "
   "support QDIO data connection isolation\n");
  break;
 case 133:
  dev_err(&card->gdev->dev,
   "Adapter is dedicated. "
   "QDIO data connection isolation not supported\n");
  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 case 136:
  dev_err(&card->gdev->dev,
   "TSO does not permit QDIO data connection isolation\n");
  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 case 129:
  dev_err(&card->gdev->dev, "The adjacent switch port does not "
   "support reflective relay mode\n");
  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 case 130:
  dev_err(&card->gdev->dev, "The reflective relay mode cannot be "
     "enabled at the adjacent switch port");
  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 case 131:
  dev_warn(&card->gdev->dev, "Turning off reflective relay mode "
     "at the adjacent switch failed\n");
  break;
 default:

  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 }
 return (cmd->hdr.return_code) ? -EIO : 0;
}
