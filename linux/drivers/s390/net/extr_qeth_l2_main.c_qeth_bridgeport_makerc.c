
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {int command_code; int return_code; } ;
struct qeth_ipacmd_setbridgeport {TYPE_3__ hdr; } ;
struct TYPE_6__ {int return_code; } ;
struct TYPE_5__ {struct qeth_ipacmd_setbridgeport sbp; } ;
struct qeth_ipa_cmd {TYPE_2__ hdr; TYPE_1__ data; } ;
struct qeth_card {TYPE_4__* gdev; } ;
typedef enum qeth_ipa_sbp_cmd { ____Placeholder_qeth_ipa_sbp_cmd } qeth_ipa_sbp_cmd ;
struct TYPE_8__ {int dev; } ;


 int EACCES ;
 int EBUSY ;
 int EEXIST ;
 int EIO ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ IS_IQD (struct qeth_card*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int qeth_bridgeport_makerc(struct qeth_card *card,
      struct qeth_ipa_cmd *cmd)
{
 struct qeth_ipacmd_setbridgeport *sbp = &cmd->data.sbp;
 enum qeth_ipa_sbp_cmd setcmd = sbp->hdr.command_code;
 u16 ipa_rc = cmd->hdr.return_code;
 u16 sbp_rc = sbp->hdr.return_code;
 int rc;

 if (ipa_rc == 131 && sbp_rc == 131)
  return 0;

 if ((IS_IQD(card) && ipa_rc == 131) ||
     (!IS_IQD(card) && ipa_rc == sbp_rc)) {
  switch (sbp_rc) {
  case 131:
   rc = 0;
   break;
  case 147:
  case 130:
   rc = -EOPNOTSUPP;
   break;
  case 133:
  case 140:
   rc = -ENODEV;
   dev_err(&card->gdev->dev,
 "The device is not configured as a Bridge Port\n");
   break;
  case 132:
  case 139:
   rc = -EPERM;
   dev_err(&card->gdev->dev,
 "A Bridge Port is already configured by a different operating system\n");
   break;
  case 138:
  case 145:
   switch (setcmd) {
   case 129:
    rc = -EEXIST;
    dev_err(&card->gdev->dev,
 "The LAN already has a primary Bridge Port\n");
    break;
   case 128:
    rc = -EBUSY;
    dev_err(&card->gdev->dev,
 "The device is already a primary Bridge Port\n");
    break;
   default:
    rc = -EIO;
   }
   break;
  case 136:
  case 143:
   rc = -EBUSY;
   dev_err(&card->gdev->dev,
 "The device is already a secondary Bridge Port\n");
   break;
  case 135:
  case 142:
   rc = -EEXIST;
   dev_err(&card->gdev->dev,
 "The LAN cannot have more secondary Bridge Ports\n");
   break;
  case 137:
  case 144:
   rc = -EBUSY;
   dev_err(&card->gdev->dev,
 "The device is already a primary Bridge Port\n");
   break;
  case 134:
  case 141:
   rc = -EACCES;
   dev_err(&card->gdev->dev,
 "The device is not authorized to be a Bridge Port\n");
   break;
  default:
   rc = -EIO;
  }
 } else {
  switch (ipa_rc) {
  case 146:
   rc = -EOPNOTSUPP;
   break;
  case 130:
   rc = -EOPNOTSUPP;
   break;
  default:
   rc = -EIO;
  }
 }

 if (rc) {
  QETH_CARD_TEXT_(card, 2, "SBPi%04x", ipa_rc);
  QETH_CARD_TEXT_(card, 2, "SBPc%04x", sbp_rc);
 }
 return rc;
}
