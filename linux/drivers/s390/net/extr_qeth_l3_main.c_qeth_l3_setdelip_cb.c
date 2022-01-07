
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_2__ {int return_code; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; } ;
struct qeth_card {int dummy; } ;


 int EADDRINUSE ;
 int EIO ;
 int ENETDOWN ;
 int ENOENT ;





__attribute__((used)) static int qeth_l3_setdelip_cb(struct qeth_card *card, struct qeth_reply *reply,
          unsigned long data)
{
 struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;

 switch (cmd->hdr.return_code) {
 case 128:
  return 0;
 case 131:
  return -EADDRINUSE;
 case 129:
  return -ENOENT;
 case 130:
  return -ENETDOWN;
 default:
  return -EIO;
 }
}
