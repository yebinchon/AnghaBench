
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_6__ {int mode; } ;
struct qeth_ipacmd_setadpparms {TYPE_2__ data; } ;
struct TYPE_7__ {scalar_t__ return_code; } ;
struct TYPE_8__ {struct qeth_ipacmd_setadpparms setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_3__ hdr; TYPE_4__ data; } ;
struct TYPE_5__ {int promisc_mode; } ;
struct qeth_card {TYPE_1__ info; } ;


 int EIO ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,scalar_t__) ;
 int SET_PROMISC_MODE_OFF ;
 scalar_t__ qeth_setadpparms_inspect_rc (struct qeth_ipa_cmd*) ;

__attribute__((used)) static int qeth_setadp_promisc_mode_cb(struct qeth_card *card,
  struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;
 struct qeth_ipacmd_setadpparms *setparms;

 QETH_CARD_TEXT(card, 4, "prmadpcb");

 setparms = &(cmd->data.setadapterparms);
 if (qeth_setadpparms_inspect_rc(cmd)) {
  QETH_CARD_TEXT_(card, 4, "prmrc%x", cmd->hdr.return_code);
  setparms->data.mode = SET_PROMISC_MODE_OFF;
 }
 card->info.promisc_mode = setparms->data.mode;
 return (cmd->hdr.return_code) ? -EIO : 0;
}
