
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
struct qeth_arp_cache_entry {int ipaddr; int macaddr; } ;
typedef enum qeth_arp_process_subcmds { ____Placeholder_qeth_arp_process_subcmds } qeth_arp_process_subcmds ;
struct TYPE_5__ {struct qeth_arp_cache_entry arp_entry; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ setassparms; } ;
struct TYPE_8__ {TYPE_3__ data; } ;


 int CARD_DEVID (struct qeth_card*) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int IPA_ARP_PROCESSING ;
 int IPA_CMD_ASS_ARP_ADD_ENTRY ;
 scalar_t__ IS_VM_NIC (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DBF_MESSAGE (int,char*,int,int ,int) ;
 int QETH_PROT_IPV4 ;
 int SETASS_DATA_SIZEOF (int ) ;
 TYPE_4__* __ipa_cmd (struct qeth_cmd_buffer*) ;
 int arp_entry ;
 int ether_addr_copy (int ,int ) ;
 int memcpy (int ,int ,int) ;
 struct qeth_cmd_buffer* qeth_get_setassparms_cmd (struct qeth_card*,int ,int,int ,int ) ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_arp_cmd_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

__attribute__((used)) static int qeth_l3_arp_modify_entry(struct qeth_card *card,
        struct qeth_arp_cache_entry *entry,
        enum qeth_arp_process_subcmds arp_cmd)
{
 struct qeth_arp_cache_entry *cmd_entry;
 struct qeth_cmd_buffer *iob;
 int rc;

 if (arp_cmd == IPA_CMD_ASS_ARP_ADD_ENTRY)
  QETH_CARD_TEXT(card, 3, "arpadd");
 else
  QETH_CARD_TEXT(card, 3, "arpdel");






 if (IS_VM_NIC(card))
  return -EOPNOTSUPP;
 if (!qeth_is_supported(card, IPA_ARP_PROCESSING)) {
  return -EOPNOTSUPP;
 }

 iob = qeth_get_setassparms_cmd(card, IPA_ARP_PROCESSING, arp_cmd,
           SETASS_DATA_SIZEOF(arp_entry),
           QETH_PROT_IPV4);
 if (!iob)
  return -ENOMEM;

 cmd_entry = &__ipa_cmd(iob)->data.setassparms.data.arp_entry;
 ether_addr_copy(cmd_entry->macaddr, entry->macaddr);
 memcpy(cmd_entry->ipaddr, entry->ipaddr, 4);
 rc = qeth_send_ipa_cmd(card, iob, qeth_l3_arp_cmd_cb, ((void*)0));
 if (rc)
  QETH_DBF_MESSAGE(2, "Could not modify (cmd: %#x) ARP entry on device %x: %#x\n",
     arp_cmd, CARD_DEVID(card), rc);
 return rc;
}
