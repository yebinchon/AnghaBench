
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qeth_card {int dummy; } ;
typedef enum qeth_ipa_cmds { ____Placeholder_qeth_ipa_cmds } qeth_ipa_cmds ;


 int CARD_DEVID (struct qeth_card*) ;
 int EEXIST ;
 int IPA_CMD_SETGMAC ;
 int IPA_CMD_SETVMAC ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DBF_MESSAGE (int,char*,int ,...) ;
 scalar_t__ is_multicast_ether_addr (int *) ;
 int qeth_l2_send_setdelmac (struct qeth_card*,int *,int) ;

__attribute__((used)) static int qeth_l2_write_mac(struct qeth_card *card, u8 *mac)
{
 enum qeth_ipa_cmds cmd = is_multicast_ether_addr(mac) ?
     IPA_CMD_SETGMAC : IPA_CMD_SETVMAC;
 int rc;

 QETH_CARD_TEXT(card, 2, "L2Wmac");
 rc = qeth_l2_send_setdelmac(card, mac, cmd);
 if (rc == -EEXIST)
  QETH_DBF_MESSAGE(2, "MAC already registered on device %x\n",
     CARD_DEVID(card));
 else if (rc)
  QETH_DBF_MESSAGE(2, "Failed to register MAC on device %x: %d\n",
     CARD_DEVID(card), rc);
 return rc;
}
