
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
struct TYPE_5__ {scalar_t__ flags_32bit; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ setassparms; } ;
struct TYPE_8__ {TYPE_3__ data; } ;


 int CARD_DEVID (struct qeth_card*) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int IPA_ARP_PROCESSING ;
 int IPA_CMD_ASS_ARP_SET_NO_ENTRIES ;
 scalar_t__ IS_VM_NIC (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DBF_MESSAGE (int,char*,int ,int) ;
 int QETH_PROT_IPV4 ;
 int SETASS_DATA_SIZEOF (int ) ;
 TYPE_4__* __ipa_cmd (struct qeth_cmd_buffer*) ;
 int flags_32bit ;
 struct qeth_cmd_buffer* qeth_get_setassparms_cmd (struct qeth_card*,int ,int ,int ,int ) ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_arp_cmd_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

__attribute__((used)) static int qeth_l3_arp_set_no_entries(struct qeth_card *card, int no_entries)
{
 struct qeth_cmd_buffer *iob;
 int rc;

 QETH_CARD_TEXT(card, 3, "arpstnoe");






 if (IS_VM_NIC(card))
  return -EOPNOTSUPP;
 if (!qeth_is_supported(card, IPA_ARP_PROCESSING)) {
  return -EOPNOTSUPP;
 }

 iob = qeth_get_setassparms_cmd(card, IPA_ARP_PROCESSING,
           IPA_CMD_ASS_ARP_SET_NO_ENTRIES,
           SETASS_DATA_SIZEOF(flags_32bit),
           QETH_PROT_IPV4);
 if (!iob)
  return -ENOMEM;

 __ipa_cmd(iob)->data.setassparms.data.flags_32bit = (u32) no_entries;
 rc = qeth_send_ipa_cmd(card, iob, qeth_l3_arp_cmd_cb, ((void*)0));
 if (rc)
  QETH_DBF_MESSAGE(2, "Could not set number of ARP entries on device %x: %#x\n",
     CARD_DEVID(card), rc);
 return rc;
}
