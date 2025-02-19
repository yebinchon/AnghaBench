
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
struct TYPE_8__ {int addr; } ;
struct TYPE_9__ {TYPE_3__ change_addr; } ;
struct TYPE_6__ {int flags; } ;
struct qeth_ipacmd_setadpparms {TYPE_4__ data; TYPE_1__ hdr; } ;
struct TYPE_10__ {struct qeth_ipacmd_setadpparms setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_5__ data; } ;
struct qeth_card {TYPE_2__* dev; } ;
struct TYPE_7__ {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int EIO ;
 scalar_t__ IS_LAYER2 (struct qeth_card*) ;
 scalar_t__ IS_OSD (struct qeth_card*) ;
 int IS_VM_NIC (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_SETADP_FLAGS_VIRTUAL_MAC ;
 int ether_addr_copy (int ,int ) ;
 int is_valid_ether_addr (int ) ;
 scalar_t__ qeth_setadpparms_inspect_rc (struct qeth_ipa_cmd*) ;

__attribute__((used)) static int qeth_setadpparms_change_macaddr_cb(struct qeth_card *card,
  struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;
 struct qeth_ipacmd_setadpparms *adp_cmd;

 QETH_CARD_TEXT(card, 4, "chgmaccb");
 if (qeth_setadpparms_inspect_rc(cmd))
  return -EIO;

 adp_cmd = &cmd->data.setadapterparms;
 if (!is_valid_ether_addr(adp_cmd->data.change_addr.addr))
  return -EADDRNOTAVAIL;

 if (IS_LAYER2(card) && IS_OSD(card) && !IS_VM_NIC(card) &&
     !(adp_cmd->hdr.flags & QETH_SETADP_FLAGS_VIRTUAL_MAC))
  return -EADDRNOTAVAIL;

 ether_addr_copy(card->dev->dev_addr, adp_cmd->data.change_addr.addr);
 return 0;
}
