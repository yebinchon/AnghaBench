
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_sbp_state_change {int entry_length; int num_entries; } ;
struct qeth_sbp_port_entry {int dummy; } ;
struct TYPE_4__ {struct qeth_sbp_state_change state_change; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct TYPE_6__ {TYPE_2__ sbp; } ;
struct qeth_ipa_cmd {TYPE_3__ data; } ;
struct qeth_card {int event_wq; } ;
struct qeth_bridge_state_data {int worker; int qports; struct qeth_card* card; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 struct qeth_bridge_state_data* kzalloc (int,int ) ;
 int memcpy (int *,struct qeth_sbp_state_change*,int) ;
 int qeth_bridge_state_change_worker ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void qeth_bridge_state_change(struct qeth_card *card,
     struct qeth_ipa_cmd *cmd)
{
 struct qeth_sbp_state_change *qports =
   &cmd->data.sbp.data.state_change;
 struct qeth_bridge_state_data *data;
 int extrasize;

 QETH_CARD_TEXT(card, 2, "brstchng");
 if (qports->entry_length != sizeof(struct qeth_sbp_port_entry)) {
  QETH_CARD_TEXT_(card, 2, "BPsz%04x", qports->entry_length);
  return;
 }
 extrasize = sizeof(struct qeth_sbp_port_entry) * qports->num_entries;
 data = kzalloc(sizeof(struct qeth_bridge_state_data) + extrasize,
  GFP_ATOMIC);
 if (!data) {
  QETH_CARD_TEXT(card, 2, "BPSalloc");
  return;
 }
 INIT_WORK(&data->worker, qeth_bridge_state_change_worker);
 data->card = card;
 memcpy(&data->qports, qports,
   sizeof(struct qeth_sbp_state_change) + extrasize);
 queue_work(card->event_wq, &data->worker);
}
