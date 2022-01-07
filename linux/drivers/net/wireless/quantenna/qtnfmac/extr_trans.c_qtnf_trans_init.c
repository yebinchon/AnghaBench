
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int waiting_for_resp; int resp_lock; int * resp_skb; scalar_t__ seq_num; int cmd_resp_completion; } ;
struct qtnf_qlink_transport {int event_queue_max_len; int event_queue; TYPE_1__ curr_cmd; } ;
struct qtnf_bus {struct qtnf_qlink_transport trans; } ;


 int QTNF_MAX_EVENT_QUEUE_LEN ;
 int init_completion (int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

void qtnf_trans_init(struct qtnf_bus *bus)
{
 struct qtnf_qlink_transport *trans = &bus->trans;

 init_completion(&trans->curr_cmd.cmd_resp_completion);
 spin_lock_init(&trans->curr_cmd.resp_lock);

 spin_lock(&trans->curr_cmd.resp_lock);
 trans->curr_cmd.seq_num = 0;
 trans->curr_cmd.waiting_for_resp = 0;
 trans->curr_cmd.resp_skb = ((void*)0);
 spin_unlock(&trans->curr_cmd.resp_lock);


 skb_queue_head_init(&trans->event_queue);
 trans->event_queue_max_len = QTNF_MAX_EVENT_QUEUE_LEN;
}
