
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int addr; int addr_size; int cmd; } ;
struct TYPE_7__ {TYPE_1__ change_addr; } ;
struct TYPE_8__ {TYPE_2__ data; } ;
struct TYPE_9__ {TYPE_3__ setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_4__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {TYPE_5__* dev; } ;
struct TYPE_10__ {int dev_addr; } ;


 int CHANGE_ADDR_READ_MAC ;
 int ENOMEM ;
 int ETH_ALEN ;
 int IPA_SETADP_ALTER_MAC_ADDRESS ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int SETADP_DATA_SIZEOF (int ) ;
 struct qeth_ipa_cmd* __ipa_cmd (struct qeth_cmd_buffer*) ;
 int change_addr ;
 int ether_addr_copy (int ,int ) ;
 struct qeth_cmd_buffer* qeth_get_adapter_cmd (struct qeth_card*,int ,int ) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;
 int qeth_setadpparms_change_macaddr_cb ;

int qeth_setadpparms_change_macaddr(struct qeth_card *card)
{
 int rc;
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;

 QETH_CARD_TEXT(card, 4, "chgmac");

 iob = qeth_get_adapter_cmd(card, IPA_SETADP_ALTER_MAC_ADDRESS,
       SETADP_DATA_SIZEOF(change_addr));
 if (!iob)
  return -ENOMEM;
 cmd = __ipa_cmd(iob);
 cmd->data.setadapterparms.data.change_addr.cmd = CHANGE_ADDR_READ_MAC;
 cmd->data.setadapterparms.data.change_addr.addr_size = ETH_ALEN;
 ether_addr_copy(cmd->data.setadapterparms.data.change_addr.addr,
   card->dev->dev_addr);
 rc = qeth_send_ipa_cmd(card, iob, qeth_setadpparms_change_macaddr_cb,
          ((void*)0));
 return rc;
}
