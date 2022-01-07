
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_2__ {int return_code; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; } ;
struct qeth_card {int dummy; } ;


 int qeth_l3_arp_makerc (int ) ;
 int qeth_setassparms_cb (struct qeth_card*,struct qeth_reply*,unsigned long) ;

__attribute__((used)) static int qeth_l3_arp_cmd_cb(struct qeth_card *card, struct qeth_reply *reply,
         unsigned long data)
{
 struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;

 qeth_setassparms_cb(card, reply, data);
 return qeth_l3_arp_makerc(cmd->hdr.return_code);
}
