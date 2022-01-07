
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;


 int CARD_DEVID (struct qeth_card*) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int IPA_ARP_PROCESSING ;
 int IPA_CMD_ASS_ARP_FLUSH_CACHE ;
 scalar_t__ IS_IQD (struct qeth_card*) ;
 scalar_t__ IS_VM_NIC (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DBF_MESSAGE (int,char*,int ,int) ;
 int QETH_PROT_IPV4 ;
 struct qeth_cmd_buffer* qeth_get_setassparms_cmd (struct qeth_card*,int ,int ,int ,int ) ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_arp_cmd_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

__attribute__((used)) static int qeth_l3_arp_flush_cache(struct qeth_card *card)
{
 struct qeth_cmd_buffer *iob;
 int rc;

 QETH_CARD_TEXT(card, 3, "arpflush");






 if (IS_VM_NIC(card) || IS_IQD(card))
  return -EOPNOTSUPP;
 if (!qeth_is_supported(card, IPA_ARP_PROCESSING)) {
  return -EOPNOTSUPP;
 }

 iob = qeth_get_setassparms_cmd(card, IPA_ARP_PROCESSING,
           IPA_CMD_ASS_ARP_FLUSH_CACHE, 0,
           QETH_PROT_IPV4);
 if (!iob)
  return -ENOMEM;

 rc = qeth_send_ipa_cmd(card, iob, qeth_l3_arp_cmd_cb, ((void*)0));
 if (rc)
  QETH_DBF_MESSAGE(2, "Could not flush ARP cache on device %x: %#x\n",
     CARD_DEVID(card), rc);
 return rc;
}
