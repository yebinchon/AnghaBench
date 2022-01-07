
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_9__ {int mask; int addr; } ;
struct TYPE_7__ {int pfxlen; int addr; } ;
struct TYPE_10__ {TYPE_3__ a4; TYPE_1__ a6; } ;
struct qeth_ipaddr {scalar_t__ proto; TYPE_4__ u; } ;
struct TYPE_11__ {void* flags; int mask; int ip_addr; } ;
struct TYPE_8__ {void* flags; int mask; int ip_addr; } ;
struct TYPE_12__ {TYPE_5__ setdelip4; TYPE_2__ setdelip6; } ;
struct qeth_ipa_cmd {TYPE_6__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef enum qeth_ipa_cmds { ____Placeholder_qeth_ipa_cmds } qeth_ipa_cmds ;
typedef int __u8 ;


 int ENOMEM ;
 int IPA_CMD_SETIP ;
 int IPA_DATA_SIZEOF (int ) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,void*) ;
 scalar_t__ QETH_PROT_IPV6 ;
 struct qeth_ipa_cmd* __ipa_cmd (struct qeth_cmd_buffer*) ;
 int memcpy (int ,int *,int) ;
 struct qeth_cmd_buffer* qeth_ipa_alloc_cmd (struct qeth_card*,int,scalar_t__,int ) ;
 int qeth_l3_fill_netmask (int *,int ) ;
 void* qeth_l3_get_setdelip_flags (struct qeth_ipaddr*,int) ;
 int qeth_l3_setdelip_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;
 int setdelip6 ;

__attribute__((used)) static int qeth_l3_send_setdelip(struct qeth_card *card,
     struct qeth_ipaddr *addr,
     enum qeth_ipa_cmds ipacmd)
{
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;
 __u8 netmask[16];
 u32 flags;

 QETH_CARD_TEXT(card, 4, "setdelip");

 iob = qeth_ipa_alloc_cmd(card, ipacmd, addr->proto,
     IPA_DATA_SIZEOF(setdelip6));
 if (!iob)
  return -ENOMEM;
 cmd = __ipa_cmd(iob);

 flags = qeth_l3_get_setdelip_flags(addr, ipacmd == IPA_CMD_SETIP);
 QETH_CARD_TEXT_(card, 4, "flags%02X", flags);

 if (addr->proto == QETH_PROT_IPV6) {
  memcpy(cmd->data.setdelip6.ip_addr, &addr->u.a6.addr,
         sizeof(struct in6_addr));
  qeth_l3_fill_netmask(netmask, addr->u.a6.pfxlen);
  memcpy(cmd->data.setdelip6.mask, netmask,
         sizeof(struct in6_addr));
  cmd->data.setdelip6.flags = flags;
 } else {
  memcpy(cmd->data.setdelip4.ip_addr, &addr->u.a4.addr, 4);
  memcpy(cmd->data.setdelip4.mask, &addr->u.a4.mask, 4);
  cmd->data.setdelip4.flags = flags;
 }

 return qeth_send_ipa_cmd(card, iob, qeth_l3_setdelip_cb, ((void*)0));
}
