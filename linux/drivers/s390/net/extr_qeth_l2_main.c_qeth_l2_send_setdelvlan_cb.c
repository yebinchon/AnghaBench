
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_6__ {scalar_t__ return_code; int command; } ;
struct TYPE_4__ {int vlan_id; } ;
struct TYPE_5__ {TYPE_1__ setdelvlan; } ;
struct qeth_ipa_cmd {TYPE_3__ hdr; TYPE_2__ data; } ;
struct qeth_card {int dummy; } ;


 int CARD_DEVID (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int ) ;
 int QETH_DBF_MESSAGE (int,char*,int ,int ,scalar_t__) ;
 int qeth_l2_setdelvlan_makerc (struct qeth_card*,scalar_t__) ;

__attribute__((used)) static int qeth_l2_send_setdelvlan_cb(struct qeth_card *card,
          struct qeth_reply *reply,
          unsigned long data)
{
 struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;

 QETH_CARD_TEXT(card, 2, "L2sdvcb");
 if (cmd->hdr.return_code) {
  QETH_DBF_MESSAGE(2, "Error in processing VLAN %u on device %x: %#x.\n",
     cmd->data.setdelvlan.vlan_id,
     CARD_DEVID(card), cmd->hdr.return_code);
  QETH_CARD_TEXT_(card, 2, "L2VL%4x", cmd->hdr.command);
 }
 return qeth_l2_setdelvlan_makerc(card, cmd->hdr.return_code);
}
