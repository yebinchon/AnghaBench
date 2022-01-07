
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp_session {scalar_t__ generation; int node_id; int reconnect_hold; int lock; scalar_t__ reconnect_expires; int guid; TYPE_1__* card; } ;
struct TYPE_2__ {scalar_t__ generation; int lock; int * local_node; } ;


 int HZ ;
 int fw_card_put (TYPE_1__*) ;
 scalar_t__ get_jiffies_64 () ;
 int pr_info (char*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_bh (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void session_check_for_reset(struct sbp_session *sess)
{
 bool card_valid = 0;

 spin_lock_bh(&sess->lock);

 if (sess->card) {
  spin_lock_irq(&sess->card->lock);
  card_valid = (sess->card->local_node != ((void*)0));
  spin_unlock_irq(&sess->card->lock);

  if (!card_valid) {
   fw_card_put(sess->card);
   sess->card = ((void*)0);
  }
 }

 if (!card_valid || (sess->generation != sess->card->generation)) {
  pr_info("Waiting for reconnect from node: %016llx\n",
    sess->guid);

  sess->node_id = -1;
  sess->reconnect_expires = get_jiffies_64() +
   ((sess->reconnect_hold + 1) * HZ);
 }

 spin_unlock_bh(&sess->lock);
}
