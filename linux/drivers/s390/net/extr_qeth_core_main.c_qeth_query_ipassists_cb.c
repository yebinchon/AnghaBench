
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_8__ {int return_code; scalar_t__ prot_version; int ipa_enabled; int ipa_supported; } ;
struct qeth_ipa_cmd {TYPE_4__ hdr; } ;
struct TYPE_6__ {int enabled_funcs; int supported_funcs; } ;
struct TYPE_5__ {int enabled_funcs; int supported_funcs; } ;
struct TYPE_7__ {TYPE_2__ ipa6; TYPE_1__ ipa4; } ;
struct qeth_card {TYPE_3__ options; } ;


 int CARD_DEVID (struct qeth_card*) ;
 int EIO ;
 int EOPNOTSUPP ;



 int IPA_SETADAPTERPARMS ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DBF_MESSAGE (int,char*,int ,...) ;
 scalar_t__ QETH_PROT_IPV4 ;
 scalar_t__ QETH_PROT_IPV6 ;

__attribute__((used)) static int qeth_query_ipassists_cb(struct qeth_card *card,
  struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd;

 QETH_CARD_TEXT(card, 2, "qipasscb");

 cmd = (struct qeth_ipa_cmd *) data;

 switch (cmd->hdr.return_code) {
 case 128:
  break;
 case 129:
 case 130:
  QETH_CARD_TEXT(card, 2, "ipaunsup");
  card->options.ipa4.supported_funcs |= IPA_SETADAPTERPARMS;
  card->options.ipa6.supported_funcs |= IPA_SETADAPTERPARMS;
  return -EOPNOTSUPP;
 default:
  QETH_DBF_MESSAGE(1, "IPA_CMD_QIPASSIST on device %x: Unhandled rc=%#x\n",
     CARD_DEVID(card), cmd->hdr.return_code);
  return -EIO;
 }

 if (cmd->hdr.prot_version == QETH_PROT_IPV4) {
  card->options.ipa4.supported_funcs = cmd->hdr.ipa_supported;
  card->options.ipa4.enabled_funcs = cmd->hdr.ipa_enabled;
 } else if (cmd->hdr.prot_version == QETH_PROT_IPV6) {
  card->options.ipa6.supported_funcs = cmd->hdr.ipa_supported;
  card->options.ipa6.enabled_funcs = cmd->hdr.ipa_enabled;
 } else
  QETH_DBF_MESSAGE(1, "IPA_CMD_QIPASSIST on device %x: Flawed LIC detected\n",
     CARD_DEVID(card));
 return 0;
}
