
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_ipacmd_addr_change_entry {int dummy; } ;
struct qeth_ipacmd_addr_change {int lost_event_mask; int num_entries; } ;
struct TYPE_4__ {int return_code; } ;
struct TYPE_3__ {struct qeth_ipacmd_addr_change addrchange; } ;
struct qeth_ipa_cmd {TYPE_2__ hdr; TYPE_1__ data; } ;
struct qeth_card {int event_wq; } ;
struct qeth_bridge_host_data {int worker; int hostevs; struct qeth_card* card; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 struct qeth_bridge_host_data* kzalloc (int,int ) ;
 int memcpy (int *,struct qeth_ipacmd_addr_change*,int) ;
 int qeth_bridge_host_event_worker ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void qeth_bridge_host_event(struct qeth_card *card,
     struct qeth_ipa_cmd *cmd)
{
 struct qeth_ipacmd_addr_change *hostevs =
   &cmd->data.addrchange;
 struct qeth_bridge_host_data *data;
 int extrasize;

 QETH_CARD_TEXT(card, 2, "brhostev");
 if (cmd->hdr.return_code != 0x0000) {
  if (cmd->hdr.return_code == 0x0010) {
   if (hostevs->lost_event_mask == 0x00)
    hostevs->lost_event_mask = 0xff;
  } else {
   QETH_CARD_TEXT_(card, 2, "BPHe%04x",
    cmd->hdr.return_code);
   return;
  }
 }
 extrasize = sizeof(struct qeth_ipacmd_addr_change_entry) *
      hostevs->num_entries;
 data = kzalloc(sizeof(struct qeth_bridge_host_data) + extrasize,
  GFP_ATOMIC);
 if (!data) {
  QETH_CARD_TEXT(card, 2, "BPHalloc");
  return;
 }
 INIT_WORK(&data->worker, qeth_bridge_host_event_worker);
 data->card = card;
 memcpy(&data->hostevs, hostevs,
   sizeof(struct qeth_ipacmd_addr_change) + extrasize);
 queue_work(card->event_wq, &data->worker);
}
