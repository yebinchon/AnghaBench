
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int entries; } ;
struct TYPE_5__ {int type; } ;
struct qeth_card {int close_dev_work; int buffer_reclaim_work; TYPE_3__ ipato; int wait_q; int cmd_waiter_list; int kernel_thread_starter; int discipline_mutex; int conf_mutex; int thread_mask_lock; int lock; int state; TYPE_1__ info; } ;
struct TYPE_6__ {int driver_info; } ;
struct TYPE_8__ {TYPE_2__ id; } ;


 TYPE_4__* CARD_RDEV (struct qeth_card*) ;
 int CARD_STATE_DOWN ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int qeth_buffer_reclaim_work ;
 int qeth_close_dev_handler ;
 int qeth_init_qdio_info (struct qeth_card*) ;
 int qeth_set_initial_options (struct qeth_card*) ;
 int qeth_start_kernel_thread ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void qeth_setup_card(struct qeth_card *card)
{
 QETH_CARD_TEXT(card, 2, "setupcrd");

 card->info.type = CARD_RDEV(card)->id.driver_info;
 card->state = CARD_STATE_DOWN;
 spin_lock_init(&card->lock);
 spin_lock_init(&card->thread_mask_lock);
 mutex_init(&card->conf_mutex);
 mutex_init(&card->discipline_mutex);
 INIT_WORK(&card->kernel_thread_starter, qeth_start_kernel_thread);
 INIT_LIST_HEAD(&card->cmd_waiter_list);
 init_waitqueue_head(&card->wait_q);
 qeth_set_initial_options(card);

 INIT_LIST_HEAD(&card->ipato.entries);
 qeth_init_qdio_info(card);
 INIT_DELAYED_WORK(&card->buffer_reclaim_work, qeth_buffer_reclaim_work);
 INIT_WORK(&card->close_dev_work, qeth_close_dev_handler);
}
