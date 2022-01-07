
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


struct qeth_sbp_query_ports {int entry_length; scalar_t__ num_entries; TYPE_6__* entry; } ;
struct qeth_sbp_port_entry {int dummy; } ;
struct qeth_reply {scalar_t__ param; } ;
struct TYPE_7__ {struct qeth_sbp_query_ports query_ports; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
struct TYPE_9__ {TYPE_2__ sbp; } ;
struct qeth_ipa_cmd {TYPE_3__ data; } ;
struct qeth_card {int dummy; } ;
struct TYPE_10__ {int * state; int * role; } ;
struct TYPE_11__ {TYPE_4__ qports; } ;
struct _qeth_sbp_cbctl {TYPE_5__ data; } ;
struct TYPE_12__ {int state; int role; } ;


 int EINVAL ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int qeth_bridgeport_makerc (struct qeth_card*,struct qeth_ipa_cmd*) ;

__attribute__((used)) static int qeth_bridgeport_query_ports_cb(struct qeth_card *card,
 struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;
 struct qeth_sbp_query_ports *qports = &cmd->data.sbp.data.query_ports;
 struct _qeth_sbp_cbctl *cbctl = (struct _qeth_sbp_cbctl *)reply->param;
 int rc;

 QETH_CARD_TEXT(card, 2, "brqprtcb");
 rc = qeth_bridgeport_makerc(card, cmd);
 if (rc)
  return rc;

 if (qports->entry_length != sizeof(struct qeth_sbp_port_entry)) {
  QETH_CARD_TEXT_(card, 2, "SBPs%04x", qports->entry_length);
  return -EINVAL;
 }

 if (qports->num_entries > 0) {
  if (cbctl->data.qports.role)
   *cbctl->data.qports.role = qports->entry[0].role;
  if (cbctl->data.qports.state)
   *cbctl->data.qports.state = qports->entry[0].state;
 }
 return 0;
}
