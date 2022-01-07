
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mac; int mac_length; } ;
struct TYPE_4__ {TYPE_1__ setdelmac; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_ipa_cmds { ____Placeholder_qeth_ipa_cmds } qeth_ipa_cmds ;
typedef int __u8 ;


 int ENOMEM ;
 int ETH_ALEN ;
 int IPA_DATA_SIZEOF (int ) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_PROT_IPV4 ;
 struct qeth_ipa_cmd* __ipa_cmd (struct qeth_cmd_buffer*) ;
 int ether_addr_copy (int ,int *) ;
 struct qeth_cmd_buffer* qeth_ipa_alloc_cmd (struct qeth_card*,int,int ,int ) ;
 int qeth_l2_send_setdelmac_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;
 int setdelmac ;

__attribute__((used)) static int qeth_l2_send_setdelmac(struct qeth_card *card, __u8 *mac,
      enum qeth_ipa_cmds ipacmd)
{
 struct qeth_ipa_cmd *cmd;
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT(card, 2, "L2sdmac");
 iob = qeth_ipa_alloc_cmd(card, ipacmd, QETH_PROT_IPV4,
     IPA_DATA_SIZEOF(setdelmac));
 if (!iob)
  return -ENOMEM;
 cmd = __ipa_cmd(iob);
 cmd->data.setdelmac.mac_length = ETH_ALEN;
 ether_addr_copy(cmd->data.setdelmac.mac, mac);
 return qeth_send_ipa_cmd(card, iob, qeth_l2_send_setdelmac_cb, ((void*)0));
}
