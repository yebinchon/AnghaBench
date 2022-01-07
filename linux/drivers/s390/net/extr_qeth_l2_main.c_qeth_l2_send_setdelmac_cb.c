
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_2__ {int return_code; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; } ;
struct qeth_card {int dummy; } ;


 int qeth_l2_setdelmac_makerc (struct qeth_card*,int ) ;

__attribute__((used)) static int qeth_l2_send_setdelmac_cb(struct qeth_card *card,
         struct qeth_reply *reply,
         unsigned long data)
{
 struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;

 return qeth_l2_setdelmac_makerc(card, cmd->hdr.return_code);
}
