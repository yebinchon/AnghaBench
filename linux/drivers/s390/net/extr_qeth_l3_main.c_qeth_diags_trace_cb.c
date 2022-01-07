
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_9__ {int action; } ;
struct TYPE_10__ {TYPE_4__ diagass; } ;
struct TYPE_6__ {scalar_t__ return_code; } ;
struct qeth_ipa_cmd {TYPE_5__ data; TYPE_1__ hdr; } ;
struct TYPE_7__ {int promisc_mode; } ;
struct qeth_card {TYPE_3__* gdev; TYPE_2__ info; } ;
typedef scalar_t__ __u16 ;
struct TYPE_8__ {int dev; } ;


 int CARD_DEVID (struct qeth_card*) ;
 int EIO ;



 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,scalar_t__) ;
 int QETH_DBF_MESSAGE (int,char*,int,int ) ;



 int SET_PROMISC_MODE_OFF ;
 int SET_PROMISC_MODE_ON ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;

__attribute__((used)) static int
qeth_diags_trace_cb(struct qeth_card *card, struct qeth_reply *reply,
       unsigned long data)
{
 struct qeth_ipa_cmd *cmd;
 __u16 rc;

 QETH_CARD_TEXT(card, 2, "diastrcb");

 cmd = (struct qeth_ipa_cmd *)data;
 rc = cmd->hdr.return_code;
 if (rc)
  QETH_CARD_TEXT_(card, 2, "dxter%x", rc);
 switch (cmd->data.diagass.action) {
 case 128:
  break;
 case 130:
  switch (rc) {
  case 0:
  case 132:
   card->info.promisc_mode = SET_PROMISC_MODE_OFF;
   dev_info(&card->gdev->dev, "The HiperSockets network "
    "traffic analyzer is deactivated\n");
   break;
  default:
   break;
  }
  break;
 case 129:
  switch (rc) {
  case 0:
   card->info.promisc_mode = SET_PROMISC_MODE_ON;
   dev_info(&card->gdev->dev, "The HiperSockets network "
    "traffic analyzer is activated\n");
   break;
  case 133:
   dev_warn(&card->gdev->dev, "The device is not "
    "authorized to run as a HiperSockets network "
    "traffic analyzer\n");
   break;
  case 131:
   dev_warn(&card->gdev->dev, "A HiperSockets "
    "network traffic analyzer is already "
    "active in the HiperSockets LAN\n");
   break;
  default:
   break;
  }
  break;
 default:
  QETH_DBF_MESSAGE(2, "Unknown sniffer action (%#06x) on device %x\n",
     cmd->data.diagass.action, CARD_DEVID(card));
 }

 return rc ? -EIO : 0;
}
