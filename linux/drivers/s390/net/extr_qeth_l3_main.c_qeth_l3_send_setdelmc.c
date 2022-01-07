
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int addr; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_10__ {TYPE_4__ a4; TYPE_1__ a6; } ;
struct qeth_ipaddr {scalar_t__ proto; TYPE_5__ u; int mac; } ;
struct TYPE_7__ {int ip4; int * ip6; int mac; } ;
struct TYPE_8__ {TYPE_2__ setdelipm; } ;
struct qeth_ipa_cmd {TYPE_3__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
struct in6_addr {int dummy; } ;


 int ENOMEM ;
 int IPA_DATA_SIZEOF (int ) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 scalar_t__ QETH_PROT_IPV6 ;
 struct qeth_ipa_cmd* __ipa_cmd (struct qeth_cmd_buffer*) ;
 int ether_addr_copy (int ,int ) ;
 int memcpy (int *,int *,int) ;
 struct qeth_cmd_buffer* qeth_ipa_alloc_cmd (struct qeth_card*,int,scalar_t__,int ) ;
 int qeth_l3_setdelip_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;
 int setdelipm ;

__attribute__((used)) static int qeth_l3_send_setdelmc(struct qeth_card *card,
   struct qeth_ipaddr *addr, int ipacmd)
{
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;

 QETH_CARD_TEXT(card, 4, "setdelmc");

 iob = qeth_ipa_alloc_cmd(card, ipacmd, addr->proto,
     IPA_DATA_SIZEOF(setdelipm));
 if (!iob)
  return -ENOMEM;
 cmd = __ipa_cmd(iob);
 ether_addr_copy(cmd->data.setdelipm.mac, addr->mac);
 if (addr->proto == QETH_PROT_IPV6)
  memcpy(cmd->data.setdelipm.ip6, &addr->u.a6.addr,
         sizeof(struct in6_addr));
 else
  memcpy(&cmd->data.setdelipm.ip4, &addr->u.a4.addr, 4);

 return qeth_send_ipa_cmd(card, iob, qeth_l3_setdelip_cb, ((void*)0));
}
