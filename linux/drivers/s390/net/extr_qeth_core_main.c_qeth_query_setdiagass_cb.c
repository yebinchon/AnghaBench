
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct qeth_reply {int dummy; } ;
struct TYPE_7__ {int ext; } ;
struct TYPE_8__ {TYPE_3__ diagass; } ;
struct TYPE_5__ {scalar_t__ return_code; } ;
struct qeth_ipa_cmd {TYPE_4__ data; TYPE_1__ hdr; } ;
struct TYPE_6__ {int diagass_support; } ;
struct qeth_card {TYPE_2__ info; } ;


 int EIO ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,scalar_t__) ;

__attribute__((used)) static int qeth_query_setdiagass_cb(struct qeth_card *card,
  struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;
 u16 rc = cmd->hdr.return_code;

 if (rc) {
  QETH_CARD_TEXT_(card, 2, "diagq:%x", rc);
  return -EIO;
 }

 card->info.diagass_support = cmd->data.diagass.ext;
 return 0;
}
