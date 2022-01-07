
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct qeth_reply {int dummy; } ;
struct TYPE_2__ {scalar_t__ return_code; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; } ;
struct qeth_card {int dummy; } ;


 int EIO ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,scalar_t__) ;

__attribute__((used)) static int qeth_hw_trap_cb(struct qeth_card *card,
  struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;
 u16 rc = cmd->hdr.return_code;

 if (rc) {
  QETH_CARD_TEXT_(card, 2, "trapc:%x", rc);
  return -EIO;
 }
 return 0;
}
